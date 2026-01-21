enum SkyStatus {
  none(0, '날씨 정보 없음'),
  sunny(1, '맑음'),
  partlyCloudy(3, '구름 많음'),
  cloudy(4, '흐림');

  final int code;
  final String description;

  const SkyStatus(this.code, this.description);

  factory SkyStatus.fromCode(String code) {
    final cleanCode = code.replaceAll('0', '');
    switch (int.tryParse(cleanCode)) {
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

  static SkyStatus fromDescription(String description) {
    if (description.contains('맑음')) return SkyStatus.sunny;
    if (description.contains('구름많음')) return SkyStatus.partlyCloudy;
    if (description.contains('흐림')) return SkyStatus.cloudy;
    return SkyStatus.none;
  }
}

enum PrecipitationType {
  none(0, '없음'),
  rain(1, '비'),
  rainSnow(2, '비/눈'),
  snow(3, '눈'),
  shower(4, '소나기'),
  drizzle(5, '빗방울'),
  drizzleSnow(6, '빗방울눈날림'),
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

  static PrecipitationType fromDescription(String description) {
    if (description.contains('비/눈')) return PrecipitationType.rainSnow;
    if (description.contains('소나기')) return PrecipitationType.shower;
    if (description.contains('비')) return PrecipitationType.rain;
    if (description.contains('눈')) return PrecipitationType.snow;
    return PrecipitationType.none;
  }
}

enum Thunderbolt {
  none(0, '없음'),
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
