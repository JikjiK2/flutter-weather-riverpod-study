import 'package:ai_weather/features/location/data/models/google_geocoding_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

import 'package:ai_weather/features/location/data/models/address_model.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_service.dart';

const String _lastLatitudeKey = 'lastLatitude';
const String _lastLongitudeKey = 'lastLongitude';
const String _lastLocationAddressKey = 'lastLocationAddress';

class LocationRepository {
  final GoogleGeocodingApiService _googleGeocodingService;

  LocationRepository(this._googleGeocodingService);

  Future<Address> getAddressFromCoordinates(double lat, double lon) async {
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
      );
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(
          "Google Geocoding API DioError Response: ${e.response!.data}",
        );
      }
      debugPrint("Google Geocoding API 오류: ${e.message}");
    } catch (e) {
      debugPrint("Google Geocoding API 호출 중 알 수 없는 오류: $e");
    }

    return const Address(administrativeArea: "위치", locality: "알 수 없음");
  }

  GeocodingResult _findBestGeocodingResult(List<GeocodingResult> results) {
    for (final result in results) {
      final componentTypes = result.addressComponents
          .expand((c) => c.types)
          .toSet();

      if (componentTypes.contains('sublocality_level_2')) {
        return result;
      }
    }

    return results.first;
  }

  Map<String, String> _parseAddressComponents(GeocodingResult result) {
    final Map<String, String> componentsMap = {};

    for (var component in result.addressComponents) {
      final types = component.types;
      final longName = component.longName;

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
    debugPrint("마지막 위치 저장됨: Lat $lat, Lon $lon, Address $address");
  }

  Future<Position?> getLastLocation() async {
    final prefs = await SharedPreferences.getInstance();
    final lastLat = prefs.getDouble(_lastLatitudeKey);
    final lastLon = prefs.getDouble(_lastLongitudeKey);

    if (lastLat != null && lastLon != null) {
      debugPrint("마지막 위치 불러옴: Lat $lastLat, Lon $lastLon");
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
    debugPrint("저장된 마지막 위치 없음.");
    return null;
  }

  Future<String?> getLastLocationAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastLocationAddressKey);
  }
}
