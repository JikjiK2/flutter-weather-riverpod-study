import 'package:ai_weather/features/location/data/models/google_geocoding_response_model.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ai_weather/features/location/data/models/address_model.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_service.dart';

const String _lastLatitudeKey = 'lastLatitude';
const String _lastLongitudeKey = 'lastLongitude';
const String _lastLocationAddressKey = 'lastLocationAddress';

class LocationRepository {
  final GoogleGeocodingApiService _googleGeocodingService;

  LocationRepository(this._googleGeocodingService);

  // reverse geocoding
  Future<Address> getAddressFromCoordinates(double lat, double lon) async {
    // 1. API 키 검증 (기존 로직 유지)
    final googleApiKey = dotenv.env['GOOGLE_GEOCODING_API_KEY'];
    if (googleApiKey == null || googleApiKey.isEmpty) {
      throw Exception(
        'Google Geocoding API Key가 누락되었습니다. .env 파일과 설정이 올바른지 확인해주세요.',
      );
    }

    try {
      // 2. Reverse Geocoding API 호출
      final response = await _googleGeocodingService.reverseGeocode(
        latlng: "$lat,$lon",
        apiKey: googleApiKey,
        language: "ko",
      );

      // 3. 응답 상태 및 결과 확인
      if (response.status != 'OK' || response.results.isEmpty) {
        return const Address(administrativeArea: "위치", locality: "알 수 없음");
      }

      // 4. ✨ 최적의 GeocodingResult 선택 (필터링 우선)
      final GeocodingResult resultToParse = _findBestGeocodingResult(
        response.results,
      );

      // 5. 선택된 결과에서 주소 컴포넌트 파싱 로직
      final Map<String, String> addressComponentsMap = _parseAddressComponents(
        resultToParse,
      );

      // 6. 최종 Address 객체 생성 및 반환
      return Address(
        country: addressComponentsMap['country'],
        administrativeArea: addressComponentsMap['administrative_area_level_1'],
        locality: addressComponentsMap['locality'],
        subLocality: addressComponentsMap['sublocality_level_1'],
        // subLocalityLevel2: sublocality_level_2, route, sublocality_level_4 중 선택
        subLocalityLevel2: _getBestSubLocalityLevel2(addressComponentsMap),
        subLocalityLevel3: addressComponentsMap['sublocality_level_3'],
        subLocalityLevel4: addressComponentsMap['sublocality_level_4'],
        formattedAddress: resultToParse.formattedAddress,
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

  /// Google Geocoding 결과 목록에서 'sublocality_level_2'를 가진 첫 번째 결과를 찾아 반환합니다.
  /// 못 찾으면 첫 번째 결과를 반환합니다.
  GeocodingResult _findBestGeocodingResult(List<GeocodingResult> results) {
    // 결과 목록을 순회하며 sublocality_level_2가 포함된 결과를 찾습니다.
    for (final result in results) {
      // 성능 최적화: 모든 컴포넌트 타입을 Set으로 미리 변환하여 O(1) 탐색
      final componentTypes = result.addressComponents
          .expand((c) => c.types)
          .toSet();

      // 🎯 필터링: sublocality_level_2 컴포넌트가 있다면, 즉시 이 결과를 반환 (조기 종료)
      if (componentTypes.contains('sublocality_level_2')) {
        return result;
      }
    }

    // 폴백: sublocality_level_2를 가진 결과를 찾지 못했다면, API가 제공한 첫 번째 결과를 반환
    return results.first;
  }

  /// 선택된 GeocodingResult에서 필요한 주소 컴포넌트를 Map 형태로 파싱하여 반환합니다.
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
  /// 우선순위: sublocality_level_2 > route > sublocality_level_4
  String? _getBestSubLocalityLevel2(Map<String, String> componentsMap) {
    return componentsMap['sublocality_level_2'] ??
        componentsMap['route'] ??
        componentsMap['sublocality_level_4'];
  }

  Future<void> saveLastLocation(double lat, double lon, String? address) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_lastLatitudeKey, lat);
    await prefs.setDouble(_lastLongitudeKey, lon);
    if (address != null) {
      await prefs.setString(_lastLocationAddressKey, address);
    }
    appLogger.i("마지막 위치 저장됨: Lat $lat, Lon $lon, Address $address");
  }

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

  Future<String?> getLastLocationAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastLocationAddressKey);
  }
}
