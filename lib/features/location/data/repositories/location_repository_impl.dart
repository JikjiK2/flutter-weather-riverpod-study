import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ai_weather/core/logger/app_logger_interface.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_data_source.dart';
import 'package:ai_weather/features/location/data/datasources/location_platform_datasource.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';
import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/core/error/failures.dart';

part 'location_repository_impl.g.dart';

const String _lastLatitudeKey = 'lastLatitude';
const String _lastLongitudeKey = 'lastLongitude';
const String _lastLocationAddressKey = 'lastLocationAddress';

class LocationRepositoryImpl implements LocationRepository {
  final GoogleGeocodingApiDataSource _googleGeocodingService;
  final LocationPlatformDataSource _platformDataSource;
  final IAppLogger _logger;

  LocationRepositoryImpl(
      this._googleGeocodingService,
      this._platformDataSource,
      this._logger,
      );

  @override
  Future<Address> getAddressFromCoordinates({
    required double lat,
    required double lon,
  }) async {
    try {
      final response = await _googleGeocodingService.reverseGeocode(
        latlng: "$lat,$lon",
        language: "ko",
      );
      return response.toBestAddress(lat, lon);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkFailure('인터넷 연결이 원활하지 않습니다. 네트워크 설정을 확인해주세요.');
      }
      throw ServerFailure('주소 서비스에 연결할 수 없습니다.');
    } catch (e) {
      throw ServerFailure('주소 변환에 실패했습니다.');
    }
  }

  @override
  Future<Map<String, List<Address>>> searchAddress({
    required String query,
  }) async {
    try {
      final response = await _googleGeocodingService.searchAddress(
        address: query,
        language: 'ko',
        region: 'kr',
      );

      return response.toAddressMap();

    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e, stacktrace) {
      _logger.e("주소 검색 오류: $e", stackTrace: stacktrace);
      throw ServerFailure('주소 검색 중 오류가 발생했습니다.');
    }
  }

  @override
  Future<void> saveLastLocation({
    required double lat,
    required double lon,
    String? address,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_lastLatitudeKey, lat);
      await prefs.setDouble(_lastLongitudeKey, lon);
      if (address != null) {
        await prefs.setString(_lastLocationAddressKey, address);
      }
      _logger.i("마지막 위치 저장됨: Lat $lat, Lon $lon, Address $address");
    } catch (e) {
      _logger.e("마지막 위치 저장 실패: $e");
    }
  }

  @override
  Future<Position?> getLastLocation() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final lastLat = prefs.getDouble(_lastLatitudeKey);
      final lastLon = prefs.getDouble(_lastLongitudeKey);

      if (lastLat != null && lastLon != null) {
        _logger.i("마지막 위치 불러옴: Lat $lastLat, Lon $lastLon");
        return Position(
          latitude: lastLat,
          longitude: lastLon,
          timestamp: DateTime.now(),
          accuracy: 0.0, altitude: 0.0, altitudeAccuracy: 0.0,
          heading: 0.0, headingAccuracy: 0.0, speed: 0.0, speedAccuracy: 0.0,
        );
      }
      return null;
    } catch (e) {
      _logger.e("마지막 위치 로드 오류: $e");
      return null;
    }
  }

  @override
  Future<Address?> getLastAddress() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final lat = prefs.getDouble(_lastLatitudeKey);
      final lon = prefs.getDouble(_lastLongitudeKey);

      if (lat != null && lon != null) {
        return Address(latitude: lat,
          longitude: lon,
        );
      }
      return null;
    } catch (e) {
      _logger.e("마지막 주소 로드 오류: $e");
      return null;
    }
  }

  @override
  Future<Position> getCurrentPosition() async {
    try {
      return await _platformDataSource.getCurrentPosition();
    } catch (e) {
      throw LocationFailure('위치 권한이 거부되었거나 GPS가 꺼져 있습니다.');
    }
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

@Riverpod(keepAlive: true)
GoogleGeocodingApiDataSource googleGeocodingApiDataSource(Ref ref) {
  return GoogleGeocodingApiDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
LocationPlatformDataSource locationPlatformDataSource(Ref ref) {
  return GeolocatorDataSourceImpl();
}