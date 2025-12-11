import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/utils/weather_enums.dart';

part 'current_weather_model.freezed.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required DateTime dateTime, // 관측 시각 (baseDate + baseTime)
    double temperature,
    int humidity,
    double windSpeed,
    int windDirection,
    String windDirectionText,
    PrecipitationType precipitationType,
    double precipitationAmount,
    double feelsLikeTemperature,
  }) = _CurrentWeather;
}
