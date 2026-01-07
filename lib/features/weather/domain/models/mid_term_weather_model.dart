import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';

part 'mid_term_weather_model.freezed.dart';

@freezed
abstract class MidTermWeather with _$MidTermWeather {
  const factory MidTermWeather({
    required String regionId, // 예보 구역 코드 (예: 11B00000 또는 11B10101)
    required String regionName, // 예보 구역 이름 (예: 서울, 인천, 경기도)
    required DateTime publishedTime, // 예보 발표 시각 (tmFc)
    required List<DailyMidTermWeather> dailyForecasts, // 일별 상세 예보 리스트
  }) = _MidTermWeather;
}
