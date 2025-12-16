import 'package:ai_weather/features/weather/data/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _repository;
  GetCurrentWeatherUseCase(this._repository);

  Future<CurrentWeather> execute({required int nx, required int ny}) async {
    // 1. 실황과 예보를 동시에 호출 (병렬 처리로 속도 최적화)
    final results = await Future.wait([
      _repository.getCurrentWeather(nx: nx, ny: ny), // 초단기 실황
      _repository.getUltraSrtForecastList(nx: nx, ny: ny), // 초단기 예보
    ]);

    final live = results[0] as CurrentWeather;
    final forecast = results[1] as List<HourlyWeatherModel>;

    // 2. 현재 시간과 가장 가까운 예보의 '하늘상태'를 찾음
    final currentSky = forecast.first.skyStatus;

    // 3. 실황 데이터에 예보의 하늘상태를 합쳐서 반환
    return CurrentWeather(
      dateTime: live.dateTime,
      temperature: live.temperature,
      humidity: live.humidity,
      windSpeed: live.windSpeed,
      windDirection: live.windDirection,
      windDirectionText: live.windDirectionText,
      precipitationType: live.precipitationType,
      precipitationAmount: live.precipitationAmount,
      feelsLikeTemperature: live.feelsLikeTemperature,
      skyStatus: currentSky,
    );
  }
}
