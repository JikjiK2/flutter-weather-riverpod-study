import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_mid_term_entity.dart';

part 'mid_term_weather_entity.freezed.dart';

@freezed
abstract class MidTermWeather with _$MidTermWeather {
  const MidTermWeather._();
  const factory MidTermWeather({
    required String regionId, // 예보 구역 코드 (예: 11B00000 또는 11B10101)
    required String regionName, // 예보 구역 이름 (예: 서울, 인천, 경기도)
    required DateTime publishedTime, // 예보 발표 시각 (tmFc)
    required List<DailyMidTermWeather> dailyForecasts, // 일별 상세 예보 리스트
  }) = _MidTermWeather;
  double get weeklyMaxTemp => dailyForecasts
      .map((e) => e.maxTemperature)
      .reduce((a, b) => a > b ? a : b);

  double get weeklyMinTemp => dailyForecasts
      .map((e) => e.minTemperature)
      .reduce((a, b) => a < b ? a : b);

  bool get hasWeeklyRain => dailyForecasts.any(
        (e) =>
    (e.precipitationProbMorning ?? 0) > 50 ||
        (e.precipitationProbAfternoon ?? 0) > 50,
  );
}

