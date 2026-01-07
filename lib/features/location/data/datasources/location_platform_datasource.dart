import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocationPlatformDataSource {
  Future<LocationPermissionStatus> checkPermission();
  Future<LocationPermissionStatus> requestPermission();
  Future<bool> isLocationServiceEnabled();
  Future<void> openAppSettings();
  Future<void> openLocationSettings();
  Future<Position> getCurrentPosition();
}

class GeolocatorDataSourceImpl implements LocationPlatformDataSource {
  @override
  Future<LocationPermissionStatus> checkPermission() async {
    final geolocatorPermission = await Geolocator.checkPermission();
    return _mapGeolocatorPermissionToDomain(geolocatorPermission);
  }

  @override
  Future<LocationPermissionStatus> requestPermission() async {
    final geolocatorPermission = await Geolocator.requestPermission();
    return _mapGeolocatorPermissionToDomain(geolocatorPermission);
  }

  @override
  Future<bool> isLocationServiceEnabled() {
    return Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<void> openAppSettings() {
    return Geolocator.openAppSettings();
  }

  @override
  Future<void> openLocationSettings() {
    return Geolocator.openLocationSettings();
  }

  @override
  Future<Position> getCurrentPosition() {
    return Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.best,
        timeLimit: const Duration(seconds: 5),
      ),
    );
  }

  LocationPermissionStatus _mapGeolocatorPermissionToDomain(
    LocationPermission permission,
  ) {
    switch (permission) {
      case LocationPermission.denied:
        return LocationPermissionStatus.denied;
      case LocationPermission.deniedForever:
        return LocationPermissionStatus.deniedForever;
      case LocationPermission.whileInUse:
        return LocationPermissionStatus.granted; // 사용 중 허용도 granted로 간주
      case LocationPermission.always:
        return LocationPermissionStatus.granted;
      case LocationPermission.unableToDetermine:
        return LocationPermissionStatus.unknown;
    }
  }
}
