import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_feels_like_temperature_usecase.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _repository;
  final GetFeelsLikeTemperatureUseCase _feelsLikeUseCase;

  GetCurrentWeatherUseCase(this._repository, this._feelsLikeUseCase);

  Future<CurrentWeather> execute({required int nx, required int ny}) async {
    final results = await Future.wait([
      _repository.getCurrentWeather(nx: nx, ny: ny),
      _repository.getUltraSrtForecastList(nx: nx, ny: ny),
    ]);

    final liveData = results[0] as CurrentWeather;
    final forecast = results[1] as List<HourlyWeatherModel>;

    final currentSky = forecast.first.skyStatus;

    final calculatedFeelsLike = _feelsLikeUseCase.execute(
      ta: liveData.temperature,
      rh: liveData.humidity,
      windSpeedMs: liveData.windSpeed,
      date: DateTime.now(),
    );

    return CurrentWeather(
      dateTime: liveData.dateTime,
      temperature: liveData.temperature,
      humidity: liveData.humidity,
      windSpeed: liveData.windSpeed,
      windDirection: liveData.windDirection,
      windDirectionText: liveData.windDirectionText,
      precipitationType: liveData.precipitationType,
      precipitationAmount: liveData.precipitationAmount,
      feelsLikeTemperature: calculatedFeelsLike,
      skyStatus: currentSky,
    );
  }
}
