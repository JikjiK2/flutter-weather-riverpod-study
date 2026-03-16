import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_unified_daily_forecast_usecase.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';

part 'weather_usecase_providers.g.dart';

@riverpod
GetCurrentWeatherUseCase getCurrentWeatherUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetCurrentWeatherUseCase(repository);
}

@riverpod
GetUnifiedDailyForecastUseCase getUnifiedDailyForecastUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetUnifiedDailyForecastUseCase(repository);
}
