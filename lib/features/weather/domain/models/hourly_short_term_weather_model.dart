import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

part 'hourly_short_term_weather_model.freezed.dart';

@freezed
abstract class HourlyShortTermWeather with _$HourlyShortTermWeather {
  const factory HourlyShortTermWeather({
    required DateTime dateTime, // 예보 시각 (fcstDate + fcstTime)
    required double temperature,
    required int humidity,
    required double windSpeed,
    required int windDirection,
    required SkyStatus skyStatus,
    required PrecipitationType precipitationType,
    required double precipitationAmount,
    required int pop, // 강수확률
    required double snowAccumulation,
    required double feelsLikeTemperature,
  }) = _HourlyShortTermWeather;
}
