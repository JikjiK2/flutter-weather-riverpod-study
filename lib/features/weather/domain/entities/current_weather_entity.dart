import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

part 'current_weather_entity.freezed.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const CurrentWeather._();
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

  CurrentWeather copyWithAdditionalInfo({
    required SkyStatus sky,
    required double feelsLike,
  }) {
    return copyWith(
      skyStatus: sky,
      feelsLikeTemperature: feelsLike,
    );
  }

  bool get hasPrecipitation => precipitationType != PrecipitationType.none;
  bool get isFreezing => feelsLikeTemperature <= 0;
  bool get isHumid => humidity > 70;

  static final dummy = CurrentWeather(
    dateTime: DateTime.now(),
    temperature: 20.0,
    humidity: 50,
    windSpeed: 2.5,
    windDirection: 180,
    windDirectionText: '남풍',
    precipitationType: PrecipitationType.none,
    precipitationAmount: 0.0,
    feelsLikeTemperature: 21.0,
    skyStatus: SkyStatus.sunny,
  );
}

