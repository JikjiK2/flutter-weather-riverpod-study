import 'package:freezed_annotation/freezed_annotation.dart';

enum SkyStatus {
  @JsonValue('0')
  none(0, '날씨 정보 없음'),

  @JsonValue('1')
  sunny(1, '맑음'),

  @JsonValue('3')
  partlyCloudy(3, '구름 많음'),

  @JsonValue('4')
  cloudy(4, '흐림');

  final int code;
  final String description;
  const SkyStatus(this.code, this.description);

  factory SkyStatus.fromCode(String code) {
    switch (int.parse(code)) {
      case 0:
        return SkyStatus.none;
      case 1:
        return SkyStatus.sunny;
      case 3:
        return SkyStatus.partlyCloudy;
      case 4:
        return SkyStatus.cloudy;
      default:
        return SkyStatus.none;
    }
  }
}

enum PrecipitationType {
  @JsonValue('0')
  none(0, '없음'),
  @JsonValue('1')
  rain(1, '비'),
  @JsonValue('2')
  rainSnow(2, '비/눈'),
  @JsonValue('3')
  snow(3, '눈'),
  @JsonValue('4')
  shower(4, '소나기'),
  @JsonValue('5')
  drizzle(5, '빗방울'),
  @JsonValue('6')
  drizzleSnow(6, '빗방울눈날림'),
  @JsonValue('7')
  snowFlurry(7, '눈날림');

  final int code;
  final String description;
  const PrecipitationType(this.code, this.description);

  factory PrecipitationType.fromCode(String code) {
    switch (int.parse(code)) {
      case 0:
        return PrecipitationType.none;
      case 1:
        return PrecipitationType.rain;
      case 2:
        return PrecipitationType.rainSnow;
      case 3:
        return PrecipitationType.snow;
      case 4:
        return PrecipitationType.shower;
      case 5:
        return PrecipitationType.drizzle;
      case 6:
        return PrecipitationType.drizzleSnow;
      case 7:
        return PrecipitationType.snowFlurry;
      default:
        return PrecipitationType.none;
    }
  }
}

enum Thunderbolt {
  @JsonValue('0')
  none(0, '없음'),
  @JsonValue('1')
  exist(1, '있음');

  final int code;
  final String description;
  const Thunderbolt(this.code, this.description);

  factory Thunderbolt.fromCode(String code) {
    switch (int.parse(code)) {
      case 0:
        return Thunderbolt.none;
      case 1:
        return Thunderbolt.exist;
      default:
        return Thunderbolt.none;
    }
  }
}

String skyStatusToString(SkyStatus status) {
  switch (status) {
    case SkyStatus.none:
      return '날씨 정보 없음';
    case SkyStatus.sunny:
      return '맑음';
    case SkyStatus.partlyCloudy:
      return '구름 많음';
    case SkyStatus.cloudy:
      return '흐림';
  }
}

String precipitationTypeToString(PrecipitationType type) {
  switch (type) {
    case PrecipitationType.none:
      return '없음';
    case PrecipitationType.rain:
      return '비';
    case PrecipitationType.rainSnow:
      return '비/눈';
    case PrecipitationType.snow:
      return '눈';
    case PrecipitationType.shower:
      return '소나기';
    case PrecipitationType.drizzle:
      return '빗방울';
    case PrecipitationType.drizzleSnow:
      return '빗방울/눈날림';
    case PrecipitationType.snowFlurry:
      return '눈날림';
  }
}
