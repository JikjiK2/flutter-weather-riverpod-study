import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/core/logger/app_logger_impl.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_unified_daily_forecast_usecase.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository_impl.dart';

part 'weather_usecase_providers.g.dart';

@Riverpod(keepAlive: true)
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepositoryImpl(
    ref.watch(kmaShortTermApiDataSourceProvider),
    ref.watch(kmaMidTermApiDataSourceProvider),
    ref.watch(loggerProvider),
  );
}

@riverpod
GetUnifiedDailyForecastUseCase getUnifiedDailyForecastUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetUnifiedDailyForecastUseCase(repository);
}

@riverpod
GetCurrentWeatherUseCase getCurrentWeatherUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetCurrentWeatherUseCase(repository);
}
