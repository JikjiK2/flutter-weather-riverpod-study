import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

part 'hourly_weather_entity.freezed.dart';

@freezed
abstract class HourlyWeather with _$HourlyWeather {
  const HourlyWeather._();

  const factory HourlyWeather({
    required DateTime forecastDateTime,
    required int nx,
    required int ny,
    required double temperature,
    required int humidity,
    required double windSpeed,
    @Default(0) int windDirection,
    required SkyStatus skyStatus,
    required PrecipitationType precipitationType,
    required double precipitationAmount,
    @Default(Thunderbolt.none) Thunderbolt lightning,
    @Default(0.0) double feelsLikeTemperature,
  }) = _HourlyWeather;

  bool get isRaining => precipitationType != PrecipitationType.none;

  bool get isSnowing =>
      precipitationType == PrecipitationType.snow ||
          precipitationType == PrecipitationType.rainSnow;

  bool get needsUmbrella =>
      precipitationType != PrecipitationType.none ||
          precipitationAmount > 0;

  bool get isNight {
    final hour = forecastDateTime.hour;
    return hour < 6 || hour > 19;
  }
  static final dummy = HourlyWeather(
    forecastDateTime: DateTime.now(),
    nx: 92, ny: 82, temperature: 20.0, humidity: 50, windSpeed: 2.5,
    skyStatus: SkyStatus.sunny,
    precipitationType: PrecipitationType.none,
    precipitationAmount: 0.0,
  );
}