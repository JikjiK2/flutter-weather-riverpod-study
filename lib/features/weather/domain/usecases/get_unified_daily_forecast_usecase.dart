import 'dart:math';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';

class GetUnifiedDailyForecastUseCase {
  final WeatherRepository _repository;

  GetUnifiedDailyForecastUseCase(this._repository);

  Future<List<DailyShortTermWeather>> execute({
    required int nx,
    required int ny,
    required String regId, // 중기 예보 구역 코드
  }) async {
    final now = DateTime.now();
    final todayOnly = DateTime(now.year, now.month, now.day);
    final yesterdayOnly = todayOnly.subtract(Duration(days: 1));
    final midBaseDate = MidTermApiUtils.getMidTermBaseTime(now);
    final midTmFc = midBaseDate.baseDate + midBaseDate.baseTime;

    final shortTermCalls = Future.wait([
      _repository.getShortTermMinMaxTemps(
        nx: nx,
        ny: ny,
        targetDate: todayOnly,
      ),
      _repository.getShortTermMinMaxTemps(
        nx: nx,
        ny: ny,
        targetDate: yesterdayOnly,
      ),
      _repository.getShortTermForecast(nx: nx, ny: ny),
    ]);
    final results = await shortTermCalls;

    final todayOnlyForecast = results[0] as DailyShortTermWeather;
    final yesterdayOnlyForecast = results[1] as DailyShortTermWeather;
    final dailyForecasts = results[2] as List<DailyShortTermWeather>;
    final normalizedTodayForecast = todayOnlyForecast.copyWith(
      date: DateTime(
        todayOnlyForecast.date.year,
        todayOnlyForecast.date.month,
        todayOnlyForecast.date.day,
      ),
    );
    final normalizedYesterdayForecast = yesterdayOnlyForecast.copyWith(
      date: DateTime(
        yesterdayOnlyForecast.date.year,
        yesterdayOnlyForecast.date.month,
        yesterdayOnlyForecast.date.day,
      ),
    );

    final shortTermDailyForecasts = [...dailyForecasts];
    shortTermDailyForecasts.add(normalizedYesterdayForecast);
    shortTermDailyForecasts.add(normalizedTodayForecast);

    final midTermForecasts = await _repository.getMidTermWeather(
      regId: regId,
      tmFc: midTmFc,
    );

    midTermForecasts.dailyForecasts;

    final unifiedForecasts = _unifyForecasts(
      shortTermDailyForecasts,
      midTermForecasts.dailyForecasts,
    );

    unifiedForecasts.sort((a, b) => a.date.compareTo(b.date));

    return unifiedForecasts;
  }

  List<DailyShortTermWeather> _unifyForecasts(
    List<DailyShortTermWeather> shortTerm,
    List<DailyMidTermWeather> midTerm,
  ) {
    final Map<DateTime, DailyShortTermWeather> unifiedMap = {
      for (var daily in shortTerm) daily.date: daily,
    };

    for (var midTermData in midTerm) {
      final date = midTermData.date;

      if (!unifiedMap.containsKey(date)) {
        final dailyFromMidTerm = _mapMidTermToDaily(midTermData);
        unifiedMap[date] = dailyFromMidTerm;
      }
    }

    return unifiedMap.values.toList();
  }

  /// DailyMidTermWeather 모델을 DailyShortTermWeather 모델로 매핑합니다.
  DailyShortTermWeather _mapMidTermToDaily(DailyMidTermWeather midTermData) {
    final minTemp = midTermData.minTemperature;
    final maxTemp = midTermData.maxTemperature;

    final morningPop = midTermData.precipitationProbMorning ?? 0;
    final afternoonPop = midTermData.precipitationProbAfternoon ?? 0;
    final maxPop = max(morningPop, afternoonPop);
    final representativeSkyStatus = SkyStatus.none;
    final representativePrecipitationType = PrecipitationType.none;

    return DailyShortTermWeather(
      date: midTermData.date,
      minTemperature: minTemp,
      maxTemperature: maxTemp,
      tempRange: maxTemp - minTemp,
      representativeSkyStatus: representativeSkyStatus,
      representativePrecipitationType: representativePrecipitationType,
      maxPop: maxPop,
    );
  }
}
