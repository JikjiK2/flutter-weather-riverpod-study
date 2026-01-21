import 'package:ai_weather/features/weather/domain/entities/mid_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';

class GetUnifiedDailyForecastUseCase {
  final WeatherRepository _repository;

  GetUnifiedDailyForecastUseCase(this._repository);

  Future<List<DailyShortTermWeather>> execute({
    required int nx,
    required int ny,
    required String regId,
  }) async {
    final now = DateTime.now();
    final todayOnly = DateTime(now.year, now.month, now.day);
    final yesterdayOnly = todayOnly.subtract(const Duration(days: 1));

    final midBaseDate = MidTermApiUtils.getMidTermBaseTime(now);
    final midTmFc = midBaseDate.baseDate + midBaseDate.baseTime;

    final results = await Future.wait([
      _repository.getShortTermMinMaxTemps(nx: nx, ny: ny, targetDate: todayOnly),
      _repository.getShortTermMinMaxTemps(nx: nx, ny: ny, targetDate: yesterdayOnly),
      _repository.getShortTermForecast(nx: nx, ny: ny),
      _repository.getMidTermWeather(regId: regId, tmFc: midTmFc),
    ]);

    final todayOnlyForecast = results[0] as DailyShortTermWeather;
    final yesterdayOnlyForecast = results[1] as DailyShortTermWeather;
    final shortTermDailyList = results[2] as List<DailyShortTermWeather>;
    final midTermWeather = results[3] as MidTermWeather;

    final Map<DateTime, DailyShortTermWeather> unifiedMap = {};

    unifiedMap[yesterdayOnly] = yesterdayOnlyForecast;
    unifiedMap[todayOnly] = todayOnlyForecast;

    for (var daily in shortTermDailyList) {
      final dateKey = DateTime(daily.date.year, daily.date.month, daily.date.day);
      if (!unifiedMap.containsKey(dateKey)) {
        unifiedMap[dateKey] = daily;
      }
    }

    for (var midTermData in midTermWeather.dailyForecasts) {
      final dateKey = DateTime(midTermData.date.year, midTermData.date.month, midTermData.date.day);

      if (!unifiedMap.containsKey(dateKey) || _isDataIncomplete(unifiedMap[dateKey]!)) {
        unifiedMap[dateKey] = DailyShortTermWeather.fromMidTerm(midTermData);
      }
    }

    final finalResult = unifiedMap.values.toList()
      ..sort((a, b) => a.date.compareTo(b.date));

    return finalResult;
  }

  bool _isDataIncomplete(DailyShortTermWeather data) {
    return data.maxTemperature == 0 && data.minTemperature == 0;
  }
}