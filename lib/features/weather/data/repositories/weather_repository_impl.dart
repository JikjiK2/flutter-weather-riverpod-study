import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/models/kma_mid_land_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_mid_tmp_fcst_response_models.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_srt_fcst_response_models.dart';
import 'package:ai_weather/config/api_config.dart';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';
import 'package:ai_weather/features/weather/domain/models/mid_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/features/weather/utils/weather_formatter_utils.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final KmaShortTermApiDataSource _shortTermDataSource;
  final KmaMidTermApiDataSource _midTermDataSource;

  WeatherRepositoryImpl(this._shortTermDataSource, this._midTermDataSource);

  // KMA 초단기 실황
  @override
  Future<CurrentWeather> getCurrentWeather({
    required int nx,
    required int ny,
  }) async {
    final now = DateTime.now();
    final baseInfo = WeatherApiUtils.getUltraSrtNcstBaseTime(now);

    try {
      final response = await _shortTermDataSource.getUltraSrtNcst(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 8,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw Exception('초단기실황 API 호출 실패: ${response.result.header.resultMsg}');
      }

      final items = response.result.body.items.item;
      if (items.isEmpty) {
        throw Exception('초단기실황 데이터가 없습니다.');
      }

      final String baseDateStr = items.first.baseDate;
      final String baseTimeStr = items.first.baseTime;

      final year = int.parse(baseDateStr.substring(0, 4));
      final month = int.parse(baseDateStr.substring(4, 6));
      final day = int.parse(baseDateStr.substring(6, 8));
      final hour = int.parse(baseTimeStr.substring(0, 2));
      final minute = int.parse(baseTimeStr.substring(2, 4));
      final dateTime = DateTime(year, month, day, hour, minute);

      final Map<String, String> dataMap = {};
      for (var item in items) {
        dataMap[item.category] = item.obsrValue;
      }

      double temperature = double.tryParse(dataMap['T1H'] ?? '0.0') ?? 0.0;
      int humidity = int.tryParse(dataMap['REH'] ?? '0') ?? 0;
      double windSpeed = double.tryParse(dataMap['WSD'] ?? '0.0') ?? 0.0;
      int windDirection = int.tryParse(dataMap['VEC'] ?? '0') ?? 0;
      PrecipitationType precipitationType = PrecipitationType.fromCode(
        dataMap['PTY'] ?? '0',
      );
      double rainfallAmount = 0.0;
      if (dataMap['RN1'] != null) {
        if (dataMap['RN1'] == '강수없음' || dataMap['RN1']!.contains('mm 미만')) {
          rainfallAmount = 0.0;
        } else {
          rainfallAmount = double.tryParse(dataMap['RN1']!) ?? 0.0;
        }
      }

      var currentWeather = CurrentWeather(
        dateTime: dateTime,
        temperature: temperature,
        humidity: humidity,
        windSpeed: windSpeed,
        windDirection: windDirection,
        windDirectionText: WeatherFormatterUtils.getWindDirectionText(
          windDirection,
        ),
        precipitationType: precipitationType,
        precipitationAmount: rainfallAmount,
        feelsLikeTemperature: 0.0,
      );

      return currentWeather;
    } catch (e, stack) {
      appLogger.e(
        "WeatherRepositoryImpl.getCurrentWeather 오류: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('초단기실황을 가져오는 데 실패했습니다: $e');
    }
  }

  // KMA 초단기 예보
  @override
  Future<List<HourlyWeatherModel>> getUltraSrtForecastList({
    required int nx,
    required int ny,
  }) async {
    final now = DateTime.now();
    final baseInfo = WeatherApiUtils.getUltraSrtForecastBaseTime(now);

    try {
      final response = await _shortTermDataSource.getUltraSrtFcst(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 60,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.response.header.resultCode != '00') {
        throw Exception('API 호출 실패: ${response.response.header.resultMsg}');
      }

      final items = response.response.body.items.item;

      final Map<String, List<KmaUltraSrtFcstApiItem>> groupedItems = {};
      for (var item in items) {
        final key = '${item.fcstDate}_${item.fcstTime}';
        groupedItems.putIfAbsent(key, () => []).add(item);
      }

      final List<HourlyWeatherModel> hourlyWeatherList = [];
      groupedItems.forEach((key, itemsForThisHour) {
        final fcstDate = key.substring(0, 8);
        final fcstTime = key.substring(9, 13);

        hourlyWeatherList.add(
          HourlyWeatherModel.fromForecastItems(
            fcstDate,
            fcstTime,
            nx,
            ny,
            itemsForThisHour,
          ),
        );
      });

      hourlyWeatherList.sort(
        (a, b) => a.forecastDateTime.compareTo(b.forecastDateTime),
      );

      return hourlyWeatherList;
    } catch (e, stack) {
      appLogger.e(
        "WeatherRepositoryImpl.getUltraSrtForecastList 오류: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('초단기 예보를 가져오는 데 실패했습니다: $e');
    }
  }

  // 특정 날짜(어제, 오늘) 최고, 최저 기온을 찾기 위한 단기 예보(baseTime: 0200 고정)
  @override
  Future<DailyShortTermWeather> getShortTermMinMaxTemps({
    required int nx,
    required int ny,
    required DateTime targetDate,
  }) async {
    final now = DateTime.now();
    final baseInfo = WeatherApiUtils.getOptimalBaseTimeForDailyTMN_TMX(
      targetDate,
      now,
    );

    appLogger.i(
      '일별 단기예보 상세 API 호출 시작. '
      'TargetDate: ${DateFormat('yyyy-MM-dd').format(targetDate)}, '
      'BaseDate: ${baseInfo.$1}, BaseTime: ${baseInfo.$2}',
    );

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 200,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw Exception(
          '단기예보 TMN/TMX API 호출 실패: ${response.result.header.resultMsg}',
        );
      }

      final List<KmaSrtFcstApiItem> items = response.result.body.items.item;
      if (items.isEmpty) {
        appLogger.w('단기예보 TMN/TMX API 응답에 아이템이 없습니다. targetDate: $targetDate');
        return DailyShortTermWeather(
          date: now,
          minTemperature: 0,
          maxTemperature: 0,
          tempRange: 0,
          representativeSkyStatus: SkyStatus.none,
          representativePrecipitationType: PrecipitationType.none,
          maxPop: 0,
        );
      }

      double? minTemp;
      double? maxTemp;
      double? tempRange;

      final targetDateStr = WeatherApiUtils.formatDateToYYYYMMDD(targetDate);
      for (var item in items) {
        if (item.fcstDate == targetDateStr) {
          final fcstValueAsDouble = double.tryParse(item.fcstValue);
          if (fcstValueAsDouble != null) {
            if (item.category == 'TMN') {
              minTemp = fcstValueAsDouble;
            } else if (item.category == 'TMX') {
              maxTemp = fcstValueAsDouble;
            }
          }
        }
        if (minTemp != null && maxTemp != null) {
          tempRange = maxTemp - minTemp;
          break;
        }
      }

      if (minTemp == null || maxTemp == null) {
        appLogger.w(
          '단기예보 TMN/TMX API에서 $targetDateStr의 최저/최고 기온을 모두 찾지 못했습니다.',
        );
      }

      return DailyShortTermWeather(
        date: targetDate,
        minTemperature: minTemp ?? 0,
        maxTemperature: maxTemp ?? 0,
        tempRange: tempRange ?? 0,
        representativeSkyStatus: SkyStatus.none,
        representativePrecipitationType: PrecipitationType.none,
        maxPop: 0,
      );
    } on DioException catch (e, stack) {
      appLogger.e(
        "DioException in getShortTermMinMaxTemps (targetDate: ${targetDate.toIso8601String().substring(0, 10)}): $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('단기 예보 ($targetDate)를 가져오는 데 실패했습니다: $e');
    } catch (e, stack) {
      appLogger.e(
        "Error in getShortTermMinMaxTemps (targetDate: ${targetDate.toIso8601String().substring(0, 10)}): $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('단기 예보 ($targetDate)를 가져오는 데 실패했습니다: $e');
    }
  }

  // KMA 단기 예보
  @override
  Future<List<DailyShortTermWeather>> getShortTermForecast({
    required int nx,
    required int ny,
  }) async {
    appLogger.i('단기 예보 API 호출 (DailyShortTermWeather)');
    final now = DateTime.now();
    final todayDateStr = DateFormat('yyyyMMdd').format(now);
    final baseInfo = WeatherApiUtils.getShortTermForecastBaseTime(now);

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 1100,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw Exception('단기예보 API 호출 실패: ${response.result.header.resultMsg}');
      }

      final List<KmaSrtFcstApiItem> items = response.result.body.items.item;
      if (items.isEmpty) {
        return [];
      }

      // baseInfo를 바탕으로 단기예보의 최대 유효 날짜를 계산합니다.
      // 단기예보의 baseDate와 baseTime을 DateTime 객체로 변환
      final baseDateDt = DateTime(
        int.parse(baseInfo.$1.substring(0, 4)),
        int.parse(baseInfo.$1.substring(4, 6)),
        int.parse(baseInfo.$1.substring(6, 8)),
        int.parse(baseInfo.$2.substring(0, 2)),
      );

      final maxValidDateForShortTerm = DateTime(
        baseDateDt.year,
        baseDateDt.month,
        baseDateDt.day,
      ).add(const Duration(days: 3));

      final Map<String, Map<String, Map<String, String>>> dailyGroupedItems =
          {};

      for (var item in items) {
        final fcstDate = item.fcstDate;
        final itemDate = DateTime(
          int.parse(fcstDate.substring(0, 4)),
          int.parse(fcstDate.substring(4, 6)),
          int.parse(fcstDate.substring(6, 8)),
        );
        if (itemDate.isAfter(maxValidDateForShortTerm)) {
          continue;
        }

        final fcstTime = item.fcstTime;
        final category = item.category;
        final fcstValue = item.fcstValue;

        if (category == 'TMN' || category == 'TMX') {
          dailyGroupedItems.putIfAbsent(fcstDate, () => {});
          dailyGroupedItems[fcstDate]!.putIfAbsent('0000', () => {})[category] =
              fcstValue;
        } else {
          dailyGroupedItems.putIfAbsent(fcstDate, () => {});
          dailyGroupedItems[fcstDate]!.putIfAbsent(
            fcstTime,
            () => {},
          )[category] = fcstValue;
        }
      }

      final List<DailyShortTermWeather> dailyShortTermForecastList = [];

      dailyGroupedItems.forEach((dateStr, timeGroupedItems) {
        if (dateStr == todayDateStr) {
          return;
        }

        final currentDay = DateTime(
          int.parse(dateStr.substring(0, 4)),
          int.parse(dateStr.substring(4, 6)),
          int.parse(dateStr.substring(6, 8)),
        );

        if (currentDay.isAfter(maxValidDateForShortTerm)) {
          return;
        }

        final tmnMap = timeGroupedItems['0000']?['TMN'];
        final tmxMap = timeGroupedItems['0000']?['TMX'];

        final minTemp = double.tryParse(tmnMap ?? '0.0') ?? 0.0;
        final maxTemp = double.tryParse(tmxMap ?? '0.0') ?? 0.0;
        final tempRange = maxTemp - minTemp;

        dailyShortTermForecastList.add(
          DailyShortTermWeather(
            date: currentDay,
            minTemperature: minTemp,
            maxTemperature: maxTemp,
            tempRange: tempRange,
            representativePrecipitationType: PrecipitationType.none,
            representativeSkyStatus: SkyStatus.none,
            maxPop: 0,
          ),
        );
      });

      dailyShortTermForecastList.sort((a, b) => a.date.compareTo(b.date));
      return dailyShortTermForecastList;
    } catch (e, stack) {
      appLogger.e(
        "WeatherRepositoryImpl.getShortTermForecast 오류: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('단기 예보 (일별)를 가져오는 데 실패했습니다: $e');
    }
  }

  // 중기 통합 예보
  @override
  Future<MidTermWeather> getMidTermWeather({
    required String regId, // 육상 예보와 기온 예보에 사용될 regId (도시 단위)
    String? stnId, // 중기 전망에 사용될 stnId (광역 단위)
    required String tmFc, // 발표 시각 (공통)
  }) async {
    try {
      final results = await Future.wait([
        _midTermDataSource.getMidTermTemperatureForecast(
          authKey: ApiConfig.kmaServiceKey!,
          pageNo: 1,
          numOfRows: 1,
          dataType: 'JSON',
          regId: regId,
          tmFc: tmFc,
        ),
        _midTermDataSource.getMidTermLandForecast(
          authKey: ApiConfig.kmaServiceKey!,
          pageNo: 1,
          numOfRows: 1,
          dataType: 'JSON',
          regId: regId,
          tmFc: tmFc,
        ),
      ]);

      final midTaResponse = results[0] as KmaMidTmpFcstApiResponse;
      final midLandResponse = results[1] as KmaMidLandFcstApiResponse;

      if (midTaResponse.response.header.resultCode != '00' ||
          midTaResponse.response.body.items.item.isEmpty) {
        appLogger.e("MidTermTemperatureForecast API 실패 또는 데이터 없음");
      }
      if (midLandResponse.response.header.resultCode != '00' ||
          midLandResponse.response.body.items.item.isEmpty) {
        appLogger.e("MidTermLandForecast API 실패 또는 데이터 없음");
      }

      final midTaItem = midTaResponse.response.body.items.item.first;
      final midLandItem = midLandResponse.response.body.items.item.first;

      final List<DailyMidTermWeather> dailyForecasts = [];
      final DateTime baseDate = DateTime.parse(tmFc.substring(0, 8));

      // 4일 후부터 7일 후까지 일별 데이터 통합
      for (int i = 4; i <= 7; i++) {
        final forecastDate = baseDate.add(Duration(days: i));

        // 중기 기온 예보 데이터 추출
        double minTemp = 0, maxTemp = 0;
        switch (i) {
          case 4:
            minTemp = midTaItem.taMin4 ?? 0.0;
            maxTemp = midTaItem.taMax4 ?? 0.0;
            break;
          case 5:
            minTemp = midTaItem.taMin5 ?? 0.0;
            maxTemp = midTaItem.taMax5 ?? 0.0;
            break;
          case 6:
            minTemp = midTaItem.taMin6 ?? 0.0;
            maxTemp = midTaItem.taMax6 ?? 0.0;
            break;
          case 7:
            minTemp = midTaItem.taMin7 ?? 0.0;
            maxTemp = midTaItem.taMax7 ?? 0.0;
            break;
        }

        // 중기 육상 예보 데이터 추출
        int? probMorning, probAfternoon;
        String? descMorning, descAfternoon;
        switch (i) {
          case 4:
            probMorning = midLandItem.rnSt4Am;
            probAfternoon = midLandItem.rnSt4Pm;
            descMorning = midLandItem.wf4Am;
            descAfternoon = midLandItem.wf4Pm;
            break;
          case 5:
            probMorning = midLandItem.rnSt5Am;
            probAfternoon = midLandItem.rnSt5Pm;
            descMorning = midLandItem.wf5Am;
            descAfternoon = midLandItem.wf5Pm;
            break;
          case 6:
            probMorning = midLandItem.rnSt6Am;
            probAfternoon = midLandItem.rnSt6Pm;
            descMorning = midLandItem.wf6Am;
            descAfternoon = midLandItem.wf6Pm;
            break;
          case 7:
            probMorning = midLandItem.rnSt7Am;
            probAfternoon = midLandItem.rnSt7Pm;
            descMorning = midLandItem.wf7Am;
            descAfternoon = midLandItem.wf7Pm;
            break;
        }

        dailyForecasts.add(
          DailyMidTermWeather(
            date: forecastDate,
            dayOffset: i,
            minTemperature: minTemp,
            maxTemperature: maxTemp,
            precipitationProbMorning: probMorning,
            precipitationProbAfternoon: probAfternoon,
            weatherDescriptionMorning: descMorning,
            weatherDescriptionAfternoon: descAfternoon,
          ),
        );
      }

      // tmFc ("YYYYMMDDHHMM")를 "YYYY-MM-DD HH:MM:00" 형식으로 변환
      final DateTime publishedTime = DateTime.parse(
        "${tmFc.substring(0, 4)}-"
        "${tmFc.substring(4, 6)}-"
        "${tmFc.substring(6, 8)} "
        "${tmFc.substring(8, 10)}:"
        "${tmFc.substring(10, 12)}:00",
      );

      return MidTermWeather(
        regionId: regId,
        regionName: 'regionName',
        publishedTime: publishedTime,
        dailyForecasts: dailyForecasts,
      );
    } on DioException catch (e, stack) {
      appLogger.e(
        "DioException in getMidTermWeather: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('네트워크 오류로 중기 예보를 가져오는 데 실패했습니다: ${e.message}');
    } catch (e, stack) {
      appLogger.e(
        "WeatherRepositoryImpl.getMidTermWeather 오류: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('중기 예보를 가져오는 데 실패했습니다: $e');
    }
  }
}
