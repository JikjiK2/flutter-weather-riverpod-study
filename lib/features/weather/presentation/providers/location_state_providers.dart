import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/core/logger/app_logger_impl.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';

part 'location_state_providers.g.dart';

@Riverpod(keepAlive: true)
class SelectedWeatherLocation extends _$SelectedWeatherLocation {
  @override
  Future<Position> build() async => _determinePosition();

  Future<Position> _determinePosition() async {
    final locationRepo = ref.read(locationRepositoryProvider);
    final logger = ref.read(loggerProvider);
    try {
      logger.i('실시간 위치 요청 시도');
      final position = await locationRepo.getCurrentPosition();
      unawaited(
        locationRepo.saveLastLocation(
          lat: position.latitude,
          lon: position.longitude,
        ),
      );
      return position;
    } catch (e) {
      logger.w('실시간 위치 실패, 저장 위치 확인: $e');
      final lastPosition = await locationRepo.getLastLocation();
      return lastPosition ?? _defaultPosition();
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _determinePosition());
  }

  Future<void> updateLocation(Position newPosition) async {
    state = AsyncData(newPosition);
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
