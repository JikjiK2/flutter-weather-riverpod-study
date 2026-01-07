import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_short_term_weather_model.dart';

part 'daily_short_term_weather_model.freezed.dart';

@freezed
abstract class DailyShortTermWeather with _$DailyShortTermWeather {
  const factory DailyShortTermWeather({
    required DateTime date, // 해당 날짜
    required double minTemperature,
    required double maxTemperature,
    required double tempRange,
    required SkyStatus representativeSkyStatus,
    required PrecipitationType representativePrecipitationType,
    required int maxPop, // 그 날의 최대 강수확률
  }) = _DailyShortTermWeather;
}
