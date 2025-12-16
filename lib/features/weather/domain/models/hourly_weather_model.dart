import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';

part 'hourly_weather_model.freezed.dart';

@freezed
abstract class HourlyWeatherModel with _$HourlyWeatherModel {
  const factory HourlyWeatherModel({
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

  factory HourlyWeatherModel.fromForecastItems(
    String fcstDate,
    String fcstTime,
    int nx,
    int ny,
    List<KmaUltraSrtFcstApiItem> itemsForThisHour,
  ) {
    final year = int.parse(fcstDate.substring(0, 4));
    final month = int.parse(fcstDate.substring(4, 6));
    final day = int.parse(fcstDate.substring(6, 8));
    final hour = int.parse(fcstTime.substring(0, 2));
    final minute = int.parse(fcstTime.substring(2, 4));
    final forecastDateTime = DateTime(year, month, day, hour, minute);

    double temperature = 0.0;
    SkyStatus skyStatus = SkyStatus.sunny;
    PrecipitationType precipitationType = PrecipitationType.none;
    double precipitationAmount = 0.0;
    int humidity = 0;
    double windSpeed = 0.0;
    int windDirection = 0;
    Thunderbolt lightning = Thunderbolt.none;

    for (final item in itemsForThisHour) {
      switch (item.category) {
        case 'T1H':
          temperature = double.tryParse(item.fcstValue) ?? temperature;
          break;
        case 'SKY': // 하늘상태 (KMA 코드 1:맑음, 3:구름많음, 4:흐림)
          skyStatus = SkyStatus.fromCode(item.fcstValue);
          break;
        case 'PTY': // 강수형태 (KMA 코드 0:없음, 1:비, 2:비/눈, 3:눈, 4:소나기)
          precipitationType = PrecipitationType.fromCode(item.fcstValue);
          break;
        case 'RN1': // 1시간 강수량 (String 값 "강수없음", "1mm 미만" 등 처리)
          if (item.fcstValue == '강수없음' || item.fcstValue.contains('mm 미만')) {
            precipitationAmount = 0.0;
          } else {
            precipitationAmount =
                double.tryParse(item.fcstValue) ?? precipitationAmount;
          }
          break;
        case 'REH':
          humidity = int.tryParse(item.fcstValue) ?? humidity;
          break;
        case 'WSD':
          windSpeed = double.tryParse(item.fcstValue) ?? windSpeed;
          break;
        case 'VEC':
          windDirection = int.tryParse(item.fcstValue) ?? windDirection;
          break;
        case 'LGT': // 낙뢰 (0:없음, 1:있음)
          lightning = Thunderbolt.fromCode(item.fcstValue);
          break;
      }
    }

    final calculatedFeelsLike = temperature - (windSpeed * 1.5);

    return HourlyWeatherModel(
      forecastDateTime: forecastDateTime,
      nx: nx,
      ny: ny,
      temperature: temperature,
      feelsLikeTemperature: calculatedFeelsLike,
      skyStatus: skyStatus,
      precipitationType: precipitationType,
      precipitationAmount: precipitationAmount,
      humidity: humidity,
      windSpeed: windSpeed,
      windDirection: windDirection,
      lightning: lightning,
    );
  }
}
