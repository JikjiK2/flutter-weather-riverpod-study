import 'package:ai_weather/core/utils/result.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/services/weather_calculator.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _repository;

  GetCurrentWeatherUseCase(this._repository);

  Future<Result<CurrentWeather>> execute({
    required int nx,
    required int ny,
    required List<HourlyWeather> preFetchedForecast,
  }) async {
    final result = await _repository.getCurrentWeather(nx: nx, ny: ny);

    return result.when(
      success: (liveData) {
        final currentSky = preFetchedForecast.isNotEmpty 
          ? preFetchedForecast.first.skyStatus 
          : SkyStatus.sunny;

        final feelsLike = WeatherCalculator.calculateFeelsLike(
          temp: liveData.temperature,
          humidity: liveData.humidity,
          windSpeedMs: liveData.windSpeed,
          date: DateTime.now(),
        );

        return Result.success(liveData.copyWithAdditionalInfo(
          sky: currentSky,
          feelsLike: feelsLike,
        ));
      },
      failure: (exception) => Result.failure(exception),
    );
  }
}
