import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

part 'current_weather_model.freezed.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required DateTime dateTime,
    required double temperature,
    required int humidity,
    required double windSpeed,
    required int windDirection,
    required String windDirectionText,
    required PrecipitationType precipitationType,
    required double precipitationAmount,
    required double feelsLikeTemperature,
    SkyStatus? skyStatus,
  }) = _CurrentWeather;
}
