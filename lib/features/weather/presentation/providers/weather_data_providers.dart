import 'dart:async';
import 'package:ai_weather/core/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/core/presentation/providers/global_error_provider.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/features/weather/utils/kma_grid_converter_utils.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_usecase_providers.dart';

part 'weather_data_providers.g.dart';

@riverpod
(int nx, int ny) weatherGridCoords(Ref ref, {required double lat, required double lon}) {
  final grid = PointToLatLng.gpsToGRID(lat, lon);
  return (grid['nx']!, grid['ny']!);
}

@Riverpod(keepAlive: true)
Future<CurrentWeather> currentWeather(Ref ref, {required int nx, required int ny}) async {
  final useCase = ref.watch(getCurrentWeatherUseCaseProvider);
  final forecast = await ref.watch(hourlyUltraSrtForecastProvider(nx: nx, ny: ny).future);

  final result = await useCase.execute(
    nx: nx,
    ny: ny,
    preFetchedForecast: forecast,
  );

  return result.when(
    success: (data) => data,
    failure: (exception) {
      ref.read(globalErrorProvider.notifier).showError(exception);
      throw exception;
    },
  );
}

@Riverpod(keepAlive: true)
Future<List<HourlyWeather>> hourlyUltraSrtForecast(Ref ref, {required int nx, required int ny}) async {
  final repository = ref.watch(weatherRepositoryProvider);
  final result = await repository.getUltraSrtForecastList(nx: nx, ny: ny);

  return result.when(
    success: (data) => data,
    failure: (exception) {
      ref.read(globalErrorProvider.notifier).showError(exception);
      throw exception;
    },
  );
}

@Riverpod(keepAlive: true)
Future<List<DailyShortTermWeather>> dailyShortTermForecast(
  Ref ref, 
  {required int nx, required int ny, required String city}
) async {
  final normalizedCity = city.replaceAll('특별시', '').replaceAll('광역시', '').replaceAll('특별자치도', '').replaceAll('특별자치시', '');
  
  final targetCityData = MidTermApiUtils.detailedMidTermRegion.firstWhere(
    (data) => normalizedCity.contains(data.city) || data.city.contains(normalizedCity),
    orElse: () => MidTermApiUtils.detailedMidTermRegion.first,
  );

  final useCase = ref.watch(getUnifiedDailyForecastUseCaseProvider);
  final result = await useCase.execute(nx: nx, ny: ny, regId: targetCityData.regId);

  return result.when(
    success: (data) => data,
    failure: (exception) {
      ref.read(globalErrorProvider.notifier).showError(exception);
      throw exception;
    },
  );
}
