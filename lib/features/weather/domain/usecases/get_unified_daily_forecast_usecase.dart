import 'package:ai_weather/core/utils/result.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';

class GetUnifiedDailyForecastUseCase {
  final WeatherRepository _repository;

  GetUnifiedDailyForecastUseCase(this._repository);

  Future<Result<List<DailyShortTermWeather>>> execute({
    required int nx,
    required int ny,
    required String regId,
  }) async {
    return Result.guard(() async {
      final now = DateTime.now();
      final todayOnly = DateTime(now.year, now.month, now.day);
      final yesterdayOnly = todayOnly.subtract(const Duration(days: 1));

      final midBaseDate = MidTermApiUtils.getMidTermBaseTime(now);
      final midTmFc = midBaseDate.baseDate + midBaseDate.baseTime;

      final todayRes = await _repository.getShortTermMinMaxTemps(nx: nx, ny: ny, targetDate: todayOnly);
      final yesterdayRes = await _repository.getShortTermMinMaxTemps(nx: nx, ny: ny, targetDate: yesterdayOnly);
      final shortTermRes = await _repository.getShortTermForecast(nx: nx, ny: ny);
      final midTermRes = await _repository.getMidTermWeather(regId: regId, tmFc: midTmFc);

      final Map<DateTime, DailyShortTermWeather> unifiedMap = {};

      yesterdayRes.when(
        success: (d) => unifiedMap[yesterdayOnly] = d,
        failure: (_) => null,
      );
      
      todayRes.when(
        success: (d) => unifiedMap[todayOnly] = d,
        failure: (_) => null,
      );

      shortTermRes.when(
        success: (shortTermDailyList) {
          for (var daily in shortTermDailyList) {
            final dateKey = DateTime(daily.date.year, daily.date.month, daily.date.day);
            if (!unifiedMap.containsKey(dateKey)) {
              unifiedMap[dateKey] = daily;
            }
          }
        },
        failure: (e) => throw e,
      );

      midTermRes.when(
        success: (midTermWeather) {
          for (var midTermData in midTermWeather.dailyForecasts) {
            final dateKey = DateTime(midTermData.date.year, midTermData.date.month, midTermData.date.day);
            if (!unifiedMap.containsKey(dateKey) || _isDataIncomplete(unifiedMap[dateKey]!)) {
              unifiedMap[dateKey] = DailyShortTermWeather.fromMidTerm(midTermData);
            }
          }
        },
        failure: (_) => null,
      );

      final finalResult = unifiedMap.values.toList()
        ..sort((a, b) => a.date.compareTo(b.date));

      return finalResult;
    });
  }

  bool _isDataIncomplete(DailyShortTermWeather data) {
    return data.maxTemperature == 0 && data.minTemperature == 0;
  }
}
