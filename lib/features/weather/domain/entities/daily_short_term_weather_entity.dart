import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_mid_term_entity.dart';

part 'daily_short_term_weather_entity.freezed.dart';

@freezed
abstract class DailyShortTermWeather with _$DailyShortTermWeather {
  const DailyShortTermWeather._();

  const factory DailyShortTermWeather({
    required DateTime date,
    required double minTemperature,
    required double maxTemperature,
    required double tempRange,
    required SkyStatus morningSkyStatus,
    required SkyStatus afternoonSkyStatus,
    required PrecipitationType morningPrecipitationType,
    required PrecipitationType afternoonPrecipitationType,
    required int maxPop, // 그 날의 최대 강수확률
  }) = _DailyShortTermWeather;

  factory DailyShortTermWeather.fromMidTerm(DailyMidTermWeather midTerm) {
    final maxPop = max(
      midTerm.precipitationProbMorning ?? 0,
      midTerm.precipitationProbAfternoon ?? 0,
    );

    return DailyShortTermWeather(
      date: midTerm.date,
      minTemperature: midTerm.minTemperature,
      maxTemperature: midTerm.maxTemperature,
      tempRange: midTerm.maxTemperature - midTerm.minTemperature,
      morningSkyStatus: SkyStatus.fromDescription(midTerm.weatherDescriptionMorning ?? ''),
      afternoonSkyStatus: SkyStatus.fromDescription(midTerm.weatherDescriptionAfternoon ?? ''),
      morningPrecipitationType: PrecipitationType.fromDescription(midTerm.weatherDescriptionMorning ?? ''),
      afternoonPrecipitationType: PrecipitationType.fromDescription(midTerm.weatherDescriptionAfternoon ?? ''),
      maxPop: maxPop,
    );
  }

  bool get isFluWarning => tempRange >= 10;

  String getDisplayDate(DateTime now) {
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(date.year, date.month, date.day);
    final difference = targetDate.difference(today).inDays;

    if (difference == 0) return '오늘';
    if (difference == -1) return '어제';

    const days = ['월', '화', '수', '목', '금', '토', '일'];
    return '${date.month}/${date.day} (${days[date.weekday - 1]})';
  }

  static final dummy = DailyShortTermWeather(
    date: DateTime.now(),
    minTemperature: 10.0,
    maxTemperature: 25.0,
    tempRange: 15.0,
    morningSkyStatus: SkyStatus.none,
    afternoonSkyStatus: SkyStatus.none,
    morningPrecipitationType: PrecipitationType.none,
    afternoonPrecipitationType: PrecipitationType.none,
    maxPop: 0,
  );
}