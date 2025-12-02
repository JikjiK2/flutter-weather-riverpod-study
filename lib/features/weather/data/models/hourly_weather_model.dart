import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';

part 'hourly_weather_model.freezed.dart';

enum SkyStatus {
  @JsonValue('1')
  clear('맑음'),
  @JsonValue('3')
  mostlyCloudy('구름많음'),
  @JsonValue('4')
  cloudy('흐림'),
  unknown('알 수 없음');

  final String description;
  const SkyStatus(this.description);

  factory SkyStatus.fromCode(String code) {
    switch (code) {
      case '1':
        return SkyStatus.clear;
      case '3':
        return SkyStatus.mostlyCloudy;
      case '4':
        return SkyStatus.cloudy;
      default:
        return SkyStatus.unknown;
    }
  }
}

enum PrecipitationType {
  @JsonValue('0')
  none('없음'),
  @JsonValue('1')
  rain('비'),
  @JsonValue('2')
  rainSnow('비/눈'),
  @JsonValue('3')
  snow('눈'),
  @JsonValue('4')
  shower('소나기'),
  unknown('알 수 없음');

  final String description;
  const PrecipitationType(this.description);

  factory PrecipitationType.fromCode(String code) {
    switch (code) {
      case '0':
        return PrecipitationType.none;
      case '1':
        return PrecipitationType.rain;
      case '2':
        return PrecipitationType.rainSnow;
      case '3':
        return PrecipitationType.snow;
      case '4':
        return PrecipitationType.shower;
      default:
        return PrecipitationType.unknown;
    }
  }
}

enum Thunderbolt {
  @JsonValue('0')
  none('없음'),
  @JsonValue('1')
  active('있음'),
  unknown('알 수 없음');

  final String description;
  const Thunderbolt(this.description);

  factory Thunderbolt.fromCode(String code) {
    switch (code) {
      case '0':
        return Thunderbolt.none;
      case '1':
        return Thunderbolt.active;
      default:
        return Thunderbolt.unknown;
    }
  }
}

@freezed
abstract class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required DateTime forecastDateTime,
    required int nx,
    required int ny,

    @Default(0.0) double temperature, // 기온 (T1H category)
    @Default(0.0) double feelsLikeTemperature, // 체감온도
    @Default(SkyStatus.unknown) SkyStatus skyStatus, // 하늘 상태 (SKY category)
    @Default(PrecipitationType.none)
    PrecipitationType precipitationType, // 강수 형태 (PTY category)
    @Default(0.0) double precipitationAmount, // 1시간 강수량 (RN1 category)
    @Default(0) int humidity, // 습도 (REH category)
    @Default(0.0) double windSpeed, // 풍속 (WSD category)
    @Default(0) int windDirectionDegree, // 풍향 (VEC category)
    @Default(Thunderbolt.none) Thunderbolt thunderbolt, // 낙뢰 (LGT category)
  }) = _HourlyWeather;

  factory HourlyWeather.fromForecastItems(
    String fcstDate,
    String fcstTime,
    int nx,
    int ny,
    List<KmaUltraSrtFcstItem> itemsForThisHour,
  ) {
    final year = int.parse(fcstDate.substring(0, 4));
    final month = int.parse(fcstDate.substring(4, 6));
    final day = int.parse(fcstDate.substring(6, 8));
    final hour = int.parse(fcstTime.substring(0, 2));
    final minute = int.parse(fcstTime.substring(2, 4));
    final forecastDateTime = DateTime(year, month, day, hour, minute);

    double temperature = 0.0;
    SkyStatus skyStatus = SkyStatus.unknown;
    PrecipitationType precipitationType = PrecipitationType.none;
    double precipitationAmount = 0.0;
    int humidity = 0;
    double windSpeed = 0.0;
    int windDirectionDegree = 0;
    Thunderbolt thunderbolt = Thunderbolt.none;

    for (final item in itemsForThisHour) {
      switch (item.category) {
        case 'T1H': // 1시간 기온
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
        case 'REH': // 습도 (%)
          humidity = int.tryParse(item.fcstValue) ?? humidity;
          break;
        case 'WSD': // 풍속 (m/s)
          windSpeed = double.tryParse(item.fcstValue) ?? windSpeed;
          break;
        case 'VEC': // 풍향 (0~360 deg)
          windDirectionDegree =
              int.tryParse(item.fcstValue) ?? windDirectionDegree;
          break;
        case 'LGT': // 낙뢰 (0:없음, 1:있음)
          thunderbolt = Thunderbolt.fromCode(item.fcstValue);
          break;
      }
    }

    final calculatedFeelsLike = temperature - (windSpeed * 1.5);

    return HourlyWeather(
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
      windDirectionDegree: windDirectionDegree,
      thunderbolt: thunderbolt,
    );
  }
}
