import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_mid_term_entity.freezed.dart';

@freezed
abstract class DailyMidTermWeather with _$DailyMidTermWeather {
  const factory DailyMidTermWeather({
    required DateTime date,
    required int dayOffset,
    required double minTemperature,
    required double maxTemperature,
    // 육상 예보 정보 (중기 육상 예보에서 옴)
    int? precipitationProbMorning,
    int? precipitationProbAfternoon,
    String? weatherDescriptionMorning,
    String? weatherDescriptionAfternoon,
  }) = _DailyMidTermWeather;
}
