import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_data_source.dart';
import 'package:ai_weather/features/location/data/datasources/location_platform_datasource.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:ai_weather/features/location/data/models/google_geocoding_response_model.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _lastLatitudeKey = 'lastLatitude';
const String _lastLongitudeKey = 'lastLongitude';
const String _lastLocationAddressKey = 'lastLocationAddress';

class LocationRepositoryImpl implements LocationRepository {
  final GoogleGeocodingApiDataSource _googleGeocodingService;
  final LocationPlatformDataSource _platformDataSource;

  LocationRepositoryImpl(
    this._googleGeocodingService,
    this._platformDataSource,
  );

  @override
  Future<Address> getAddressFromCoordinates({
    required double lat,
    required double lon,
  }) async {
    final googleApiKey = dotenv.env['GOOGLE_GEOCODING_API_KEY'];
    if (googleApiKey == null || googleApiKey.isEmpty) {
      throw Exception(
        'Google Geocoding API Key가 누락되었습니다. .env 파일과 설정이 올바른지 확인해주세요.',
      );
    }

    try {
      final response = await _googleGeocodingService.reverseGeocode(
        latlng: "$lat,$lon",
        apiKey: googleApiKey,
        language: "ko",
      );

      if (response.status != 'OK' || response.results.isEmpty) {
        return const Address(administrativeArea: "위치", locality: "알 수 없음");
      }

      final GeocodingResult resultToParse = _findBestGeocodingResult(
        response.results,
      );

      final Map<String, String> addressComponentsMap = _parseAddressComponents(
        resultToParse,
      );

      return Address(
        country: addressComponentsMap['country'],
        administrativeArea: addressComponentsMap['administrative_area_level_1'],
        locality: addressComponentsMap['locality'],
        subLocality: addressComponentsMap['sublocality_level_1'],
        subLocalityLevel2: _getBestSubLocalityLevel2(addressComponentsMap),
        subLocalityLevel3: addressComponentsMap['sublocality_level_3'],
        subLocalityLevel4: addressComponentsMap['sublocality_level_4'],
        formattedAddress: resultToParse.formattedAddress,
        latitude: lat,
        longitude: lon,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        appLogger.e(
          "Google Geocoding API DioError Response: ${e.response!.data}",
        );
      }
      appLogger.e("Google Geocoding API 오류: ${e.message}");
    } catch (e) {
      appLogger.e("Google Geocoding API 호출 중 알 수 없는 오류: $e");
    }
    return const Address(administrativeArea: "위치", locality: "알 수 없음");
  }

  @override
  Future<Map<String, List<Address>>> searchAddress({
    required String query,
  }) async {
    final googleApiKey = dotenv.env['GOOGLE_GEOCODING_API_KEY'];
    if (googleApiKey == null || googleApiKey.isEmpty) {
      throw Exception(
        'Google Geocoding API Key가 누락되었습니다. .env 파일과 설정이 올바른지 확인해주세요.',
      );
    }

    try {
      final response = await _googleGeocodingService.searchAddress(
        address: query,
        apiKey: googleApiKey,
        language: 'ko',
        region: 'kr',
      );
      if (response.status == 'OK') {
        final Map<String, List<Address>> addressItems = {};
        if (response.results.isEmpty) {
          return {};
        }

        for (var result in response.results) {
          final key = result.formattedAddress;

          final Map<String, String> addressComponentsMap =
              _parseAddressComponents(result);

          addressItems
              .putIfAbsent(key!, () => [])
              .add(
                Address(
                  country: addressComponentsMap['country'],
                  administrativeArea:
                      addressComponentsMap['administrative_area_level_1'],
                  locality: addressComponentsMap['locality'],
                  subLocality: addressComponentsMap['sublocality_level_1'],
                  subLocalityLevel2: _getBestSubLocalityLevel2(
                    addressComponentsMap,
                  ),
                  subLocalityLevel3:
                      addressComponentsMap['sublocality_level_3'],
                  subLocalityLevel4:
                      addressComponentsMap['sublocality_level_4'],
                  formattedAddress: result.formattedAddress,
                  latitude: result.geometry.geometryLocation?.lat,
                  longitude: result.geometry.geometryLocation?.lng,
                ),
              );
        }
        return addressItems;
      } else if (response.status == 'ZERO_RESULTS') {
        appLogger.i("주소 검색 결과 없음: $query");
        return {};
      } else {
        appLogger.e("Google Geocoding API Error: ${response.status}");
        return {};
      }
    } on DioException catch (e) {
      if (e.response != null) {
        appLogger.e(
          "Google Geocoding API DioError Response: ${e.response!.data}",
        );
      }
      appLogger.e("Google Geocoding API DioException: ${e.message}");
      return {};
    } catch (e, stacktrace) {
      appLogger.e("주소 검색 중 알 수 없는 오류 발생: $e");
      appLogger.e('스택트레이스: $stacktrace');
      return {};
    }
  }

  /// Google Geocoding 결과 목록에서 'sublocality_level_2'를 가진 첫 번째 결과를 찾아 반환합니다. 헬퍼 함수
  /// 못 찾으면 첫 번째 결과를 반환합니다.
  GeocodingResult _findBestGeocodingResult(List<GeocodingResult> results) {
    // 결과 목록을 순회하며 sublocality_level_2가 포함된 결과를 찾습니다.
    for (final result in results) {
      // 성능 최적화: 모든 컴포넌트 타입을 Set으로 미리 변환하여 O(1) 탐색
      final componentTypes = result.addressComponents
          .expand((c) => c.types)
          .toSet();

      // 필터링: sublocality_level_2 컴포넌트가 있다면, 즉시 이 결과를 반환 (조기 종료)
      if (componentTypes.contains('sublocality_level_2')) {
        return result;
      }
    }

    // 폴백: sublocality_level_2를 가진 결과를 찾지 못했다면, API가 제공한 첫 번째 결과를 반환
    return results.first;
  }

  /// 선택된 GeocodingResult에서 필요한 주소 컴포넌트를 Map 형태로 파싱하여 반환합니다. 헬퍼 함수
  Map<String, String> _parseAddressComponents(GeocodingResult result) {
    final Map<String, String> componentsMap = {};

    for (var component in result.addressComponents) {
      final types = component.types;
      final longName = component.longName;

      // 첫 번째 매칭되는 타입의 값을 사용합니다. (중복 방지)
      if (types.contains('country') && componentsMap['country'] == null) {
        componentsMap['country'] = longName;
      } else if (types.contains('administrative_area_level_1') &&
          componentsMap['administrative_area_level_1'] == null) {
        componentsMap['administrative_area_level_1'] = longName;
      } else if (types.contains('locality') &&
          componentsMap['locality'] == null) {
        componentsMap['locality'] = longName;
      } else if (types.contains('sublocality_level_1') &&
          componentsMap['sublocality_level_1'] == null) {
        componentsMap['sublocality_level_1'] = longName;
      } else if (types.contains('sublocality_level_2') &&
          componentsMap['sublocality_level_2'] == null) {
        componentsMap['sublocality_level_2'] = longName;
      } else if (types.contains('sublocality_level_3') &&
          componentsMap['sublocality_level_3'] == null) {
        componentsMap['sublocality_level_3'] = longName;
      } else if (types.contains('sublocality_level_4') &&
          componentsMap['sublocality_level_4'] == null) {
        componentsMap['sublocality_level_4'] = longName;
      } else if (types.contains('route') && componentsMap['route'] == null) {
        componentsMap['route'] = longName;
      }
    }

    return componentsMap;
  }

  /// subLocalityLevel2 값을 결정합니다.
  /// 우선순위: sublocality_level_2 > route > sublocality_level_4 헬퍼 함수
  String? _getBestSubLocalityLevel2(Map<String, String> componentsMap) {
    return componentsMap['sublocality_level_2'] ??
        componentsMap['route'] ??
        componentsMap['sublocality_level_4'];
  }

  @override
  Future<void> saveLastLocation({
    required double lat,
    required double lon,
    String? address,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_lastLatitudeKey, lat);
    await prefs.setDouble(_lastLongitudeKey, lon);
    if (address != null) {
      await prefs.setString(_lastLocationAddressKey, address);
    }
    appLogger.i("마지막 위치 저장됨: Lat $lat, Lon $lon, Address $address");
  }

  @override
  Future<Position?> getLastLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final lastLat = prefs.getDouble(_lastLatitudeKey);
    final lastLon = prefs.getDouble(_lastLongitudeKey);

    if (lastLat != null && lastLon != null) {
      appLogger.i("마지막 위치 불러옴: Lat $lastLat, Lon $lastLon");
      return Position(
        latitude: lastLat,
        longitude: lastLon,
        timestamp: DateTime.now(),
        accuracy: 0.0,
        altitude: 0.0,
        altitudeAccuracy: 0.0,
        heading: 0.0,
        headingAccuracy: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0,
      );
    }
    appLogger.i("저장된 마지막 위치 없음.");
    return null;
  }

  @override
  Future<String?> getLastLocationAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastLocationAddressKey);
  }

  @override
  Future<Position> getCurrentPosition() async {
    return _platformDataSource.getCurrentPosition();
  }

  @override
  Future<LocationPermissionStatus> checkPermission() {
    return _platformDataSource.checkPermission();
  }

  @override
  Future<LocationPermissionStatus> requestPermission() {
    return _platformDataSource.requestPermission();
  }

  @override
  Future<bool> isLocationServiceEnabled() {
    return _platformDataSource.isLocationServiceEnabled();
  }

  @override
  Future<void> openAppSettings() {
    return _platformDataSource.openAppSettings();
  }

  @override
  Future<void> openLocationSettings() {
    return _platformDataSource.openLocationSettings();
  }
}
