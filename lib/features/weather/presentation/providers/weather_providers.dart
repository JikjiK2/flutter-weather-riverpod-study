import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/features/weather/data/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_ultra_srt_fcst_api_service.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/app/providers/app_providers.dart';

final kmaUltraSrtFcstApiServiceProvider = Provider<KmaUltraSrtFcstApiService>((
  ref,
) {
  return KmaUltraSrtFcstApiService(ref.watch(dioProvider));
});

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository(ref.watch(kmaUltraSrtFcstApiServiceProvider));
});

final hourlyWeatherListProvider =
    FutureProvider.autoDispose<List<HourlyWeather>>((ref) async {
      final weatherRepo = ref.watch(weatherRepositoryProvider);

      final currentPosition = await ref.watch(currentLocationProvider.future);

      final lat = currentPosition.latitude;
      final lon = currentPosition.longitude;

      return weatherRepo.getHourlyWeatherForCurrentLocation(lat, lon);
    });
