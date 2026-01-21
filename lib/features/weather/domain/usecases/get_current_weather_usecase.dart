import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/services/weather_calculator.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _repository;

  GetCurrentWeatherUseCase(this._repository);

  Future<CurrentWeather> execute({
    required int nx,
    required int ny,
    required List<HourlyWeather> preFetchedForecast,
  }) async {
    final liveData = await _repository.getCurrentWeather(nx: nx, ny: ny);

    final currentSky = preFetchedForecast.first.skyStatus;

    final feelsLike = WeatherCalculator.calculateFeelsLike(
      temp: liveData.temperature,
      humidity: liveData.humidity,
      windSpeedMs: liveData.windSpeed,
      date: DateTime.now(),
    );

    return liveData.copyWithAdditionalInfo(
      sky: currentSky,
      feelsLike: feelsLike,
    );
  }
}
