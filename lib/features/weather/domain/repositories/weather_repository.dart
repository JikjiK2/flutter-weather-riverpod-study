import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/mid_term_weather_model.dart';

abstract class WeatherRepository {
  Future<List<HourlyWeatherModel>> getUltraSrtForecastList({
    required int nx,
    required int ny,
  });

  Future<List<DailyShortTermWeather>> getShortTermForecast({
    required int nx,
    required int ny,
  });

  Future<CurrentWeather> getCurrentWeather({required int nx, required int ny});

  // 통합 중기 예보
  Future<MidTermWeather> getMidTermWeather({
    required String regId, // 육상 예보와 기온 예보에 사용
    String? stnId, // 중기 전망에 사용
    required String tmFc, // 발표 시간 (모든 중기 API에 공통)
  });

  Future<DailyShortTermWeather> getShortTermMinMaxTemps({
    required int nx,
    required int ny,
    required DateTime targetDate,
  });
}
