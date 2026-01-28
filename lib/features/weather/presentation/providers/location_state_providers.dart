import 'dart:async';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';

part 'location_state_providers.g.dart';

@Riverpod(keepAlive: true)
class SelectedWeatherLocation extends _$SelectedWeatherLocation {
  @override
  Future<Position> build() async {
    return _determinePosition();
  }

  Future<Position> _determinePosition() async {
    final locationRepo = ref.read(locationRepositoryProvider);

    LocationPermissionStatus permission = await locationRepo.checkPermission();

    if (permission == LocationPermissionStatus.denied) {
      permission = await locationRepo.requestPermission();
    }

    if (permission != LocationPermissionStatus.granted) {
      final lastPos = await locationRepo.getLastLocation();
      return lastPos ?? _defaultPosition();
    }

    try {
      final position = await locationRepo.getCurrentPosition();
      unawaited(locationRepo.saveLastLocation(lat: position.latitude, lon: position.longitude));
      return position;
    } catch (e) {
      final lastPos = await locationRepo.getLastLocation();
      return lastPos ?? _defaultPosition();
    }
  }

  Future<void> updateToLastOrDeafult() async {
    final locationRepo = ref.read(locationRepositoryProvider);
    final lastPosition = await locationRepo.getLastLocation();
    state = AsyncData(lastPosition ?? _defaultPosition());
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _determinePosition());
  }

  Future<void> updateLocation(Position newPosition, {String? address}) async {
    final locationRepo = ref.read(locationRepositoryProvider);
    state = AsyncData(newPosition);

    unawaited(
      locationRepo.saveLastLocation(
        lat: newPosition.latitude,
        lon: newPosition.longitude,
        address: address,
      ),
    );
  }

  Position _defaultPosition() => Position(
    latitude: 37.5665,
    longitude: 126.9780,
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
