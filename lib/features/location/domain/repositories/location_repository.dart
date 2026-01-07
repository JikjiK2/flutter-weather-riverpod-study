import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:geolocator/geolocator.dart';

import 'package:ai_weather/features/location/domain/models/address_model.dart';

abstract class LocationRepository {
  Future<Position> getCurrentPosition();
  Future<LocationPermissionStatus> checkPermission();
  Future<LocationPermissionStatus> requestPermission();
  Future<bool> isLocationServiceEnabled();
  Future<void> openAppSettings();
  Future<void> openLocationSettings();

  Future<Address> getAddressFromCoordinates({
    required double lat,
    required double lon,
  });

  Future<void> saveLastLocation({
    required double lat,
    required double lon,
    String? address,
  });

  Future<Position?> getLastLocation();

  Future<String?> getLastLocationAddress();

  Future<Map<String, List<Address>>> searchAddress({required String query});
}
