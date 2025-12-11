import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

@HiveType(typeId: 100)
enum SkyStatus {
  @HiveField(0)
  @JsonValue('1')
  sunny(1, '맑음'),
  @HiveField(1)
  @JsonValue('3')
  partlyCloudy(3, '구름 많음'),
  @HiveField(2)
  @JsonValue('4')
  cloudy(4, '흐림');

  final int code;
  final String description;
  const SkyStatus(this.code, this.description);

  factory SkyStatus.fromCode(String code) {
    switch (int.parse(code)) {
      case 1:
        return SkyStatus.sunny;
      case 3:
        return SkyStatus.partlyCloudy;
      case 4:
        return SkyStatus.cloudy;
      default:
        return SkyStatus.cloudy;
    }
  }
}

@HiveType(typeId: 101)
enum PrecipitationType {
  @HiveField(0)
  @JsonValue('0')
  none(0, '없음'),
  @HiveField(1)
  @JsonValue('1')
  rain(1, '비'),
  @HiveField(2)
  @JsonValue('2')
  rainSnow(2, '비/눈'),
  @HiveField(3)
  @JsonValue('3')
  snow(3, '눈'),
  @HiveField(4)
  @JsonValue('4')
  shower(4, '소나기'),
  @HiveField(5)
  @JsonValue('5')
  drizzle(5, '빗방울'),
  @HiveField(6)
  @JsonValue('6')
  drizzleSnow(6, '빗방울눈날림'),
  @HiveField(7)
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

@HiveType(typeId: 102)
enum Thunderbolt {
  @HiveField(0)
  @JsonValue('0')
  none(0, '없음'),
  @HiveField(1)
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

// Enum에서 String code로 파싱하기 위한 확장 함수들
extension SkyStatusExtension on SkyStatus {
  static SkyStatus fromStringCode(String code) => SkyStatus.fromCode(code);
}

extension PrecipitationTypeExtension on PrecipitationType {
  static PrecipitationType fromStringCode(String code) =>
      PrecipitationType.fromCode(code);
}

extension ThunderboltExtension on Thunderbolt {
  static Thunderbolt fromStringCode(String code) => Thunderbolt.fromCode(code);
}
