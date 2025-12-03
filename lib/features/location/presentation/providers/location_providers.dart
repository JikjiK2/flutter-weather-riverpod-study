import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_service.dart';
import 'package:ai_weather/features/location/data/repositories/location_repository.dart';
import 'package:ai_weather/features/location/data/models/address_model.dart';

final googleGeocodingApiServiceProvider = Provider<GoogleGeocodingApiService>((
  ref,
) {
  return GoogleGeocodingApiService(ref.watch(dioProvider));
});

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepository(ref.watch(googleGeocodingApiServiceProvider));
});

const double defaultLatitude = 37.5665;
const double defaultLongitude = 126.9780;

final currentLocationProvider = FutureProvider.autoDispose<Position>((
  ref,
) async {
  final locationRepo = ref.watch(locationRepositoryProvider);

  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  LocationPermission permission = await Geolocator.checkPermission();

  if (!serviceEnabled ||
      permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    debugPrint("위치 서비스 비활성 또는 권한 없음. 마지막 저장 위치 확인.");
    Position? lastLocation = await locationRepo.getLastLocation();
    if (lastLocation != null) {
      debugPrint(
        "마지막 저장 위치 사용: ${lastLocation.latitude}, ${lastLocation.longitude}",
      );
      return lastLocation;
    } else {
      debugPrint("마지막 저장 위치 없음. 기본 위치 사용: $defaultLatitude, $defaultLongitude");
      return Position(
        latitude: defaultLatitude,
        longitude: defaultLongitude,
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
  }

  try {
    Position currentPosition = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    );
    debugPrint(
      "현재 GPS 위치 가져옴: ${currentPosition.latitude}, ${currentPosition.longitude}",
    );
    return currentPosition;
  } catch (e) {
    debugPrint("Geolocator.getCurrentPosition() 오류 발생: $e");
    Position? lastLocation = await locationRepo.getLastLocation();
    if (lastLocation != null) {
      debugPrint(
        "실제 위치 가져오기 실패, 마지막 저장 위치 사용: ${lastLocation.latitude}, ${lastLocation.longitude}",
      );
      return lastLocation;
    } else {
      debugPrint("실제 위치 가져오기 실패, 마지막 저장 위치 없음. 기본 위치 사용.");
      return Position(
        latitude: defaultLatitude,
        longitude: defaultLongitude,
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
  }
});

final currentAddressProvider = FutureProvider.autoDispose<Address>((ref) async {
  final locationRepo = ref.watch(locationRepositoryProvider);
  final currentPosition = await ref.watch(currentLocationProvider.future);

  final lat = currentPosition.latitude;
  final lon = currentPosition.longitude;

  final address = await locationRepo.getAddressFromCoordinates(lat, lon);
  if (address.administrativeArea != null || address.locality != null) {
    final List<String> componentsToSave = [];
    if (address.administrativeArea != null &&
        address.administrativeArea!.isNotEmpty) {
      componentsToSave.add(address.administrativeArea!);
    }
    if (address.administrativeArea?.contains('특별시') == true ||
        address.administrativeArea?.contains('광역시') == true) {
      if (address.subLocality != null && address.subLocality!.isNotEmpty) {
        componentsToSave.add(address.subLocality!);
      } else if (address.locality != null && address.locality!.isNotEmpty) {
        componentsToSave.add(address.locality!);
      }
    } else {
      if (address.locality != null && address.locality!.isNotEmpty) {
        componentsToSave.add(address.locality!);
      }
    }
    if (address.subLocalityLevel2 != null &&
        address.subLocalityLevel2!.isNotEmpty) {
      componentsToSave.add(address.subLocalityLevel2!);
    }

    final saveAddress = componentsToSave.take(3).join(' ');
    await locationRepo.saveLastLocation(lat, lon, saveAddress);
  }

  return address;
});

final gpsStatusProvider = FutureProvider.autoDispose<bool>((ref) async {
  try {
    return await Geolocator.isLocationServiceEnabled();
  } catch (e) {
    debugPrint("GPS 상태 확인 중 오류 발생: $e");
    return false;
  }
});
