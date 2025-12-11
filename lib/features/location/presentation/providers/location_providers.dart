import 'package:ai_weather/utils/app_logger.dart';
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

  if (permission == LocationPermission.denied) {
    appLogger.w("위치 권한 거부됨. 사용자에게 권한 요청.");
    permission = await Geolocator.requestPermission();
  }

  // GPS 서비스가 활성화되어 있고, 권한이 부여된 경우에만 현재 위치 가져오기 시도
  if (serviceEnabled &&
      (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always)) {
    try {
      appLogger.i("Geolocator를 통해 현재 위치 가져오기 시도...");
      Position currentPosition = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      appLogger.i(
        "현재 GPS 위치 가져옴: ${currentPosition.latitude}, ${currentPosition.longitude}",
      );
      return currentPosition;
    } catch (e) {
      appLogger.e("현재 위치를 가져오는 중 오류 발생, 대체 로직으로 넘어갑니다: $e");
      // 오류 발생 시 아래의 대체 로직으로 넘어감
    }
  }

  // 대체 로직: GPS 사용 불가 또는 현재 위치 가져오기 실패 시 실행
  appLogger.i("GPS 사용 불가 또는 실패. 마지막으로 저장된 위치를 확인합니다.");
  Position? lastLocation = await locationRepo.getLastLocation();
  if (lastLocation != null) {
    appLogger.i(
      "마지막 저장 위치 사용: ${lastLocation.latitude}, ${lastLocation.longitude}",
    );
    return lastLocation;
  } else {
    appLogger.i("마지막 저장 위치 없음. 기본 위치 사용: $defaultLatitude, $defaultLongitude");
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
    appLogger.e("GPS 상태 확인 중 오류 발생: $e");
    return false;
  }
});
