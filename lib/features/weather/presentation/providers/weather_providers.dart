import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:geolocator/geolocator.dart';

import 'package:ai_weather/features/weather/data/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/data/data_sources/kma_ultra_srt_fcst_api_service.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (log) => debugPrint(log.toString()),
    ),
  );
  return dio;
});

final kmaUltraSrtFcstApiServiceProvider = Provider<KmaUltraSrtFcstApiService>((
  ref,
) {
  return KmaUltraSrtFcstApiService(ref.watch(dioProvider));
});

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository(ref.watch(kmaUltraSrtFcstApiServiceProvider));
});

final currentLocationProvider = FutureProvider.autoDispose<Position>((
  ref,
) async {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('위치 정보 권한이 거부되었습니다.');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    throw Exception('위치 정보 권한이 영구적으로 거부되었습니다. 설정에서 변경해주세요.');
  }

  return await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    ),
  );
});

final hourlyWeatherListProvider =
    FutureProvider.autoDispose<List<HourlyWeather>>((ref) async {
      final weatherRepo = ref.watch(weatherRepositoryProvider);

      final currentPosition = await ref.watch(currentLocationProvider.future);

      final lat = currentPosition.latitude;
      final lon = currentPosition.longitude;

      return weatherRepo.getHourlyWeatherForCurrentLocation(lat, lon);
    });
