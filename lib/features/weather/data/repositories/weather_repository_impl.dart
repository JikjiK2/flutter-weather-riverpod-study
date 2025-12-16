import 'package:ai_weather/features/location/utils/address_formatter_utils.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_srt_fcst_response_models.dart';
import 'package:ai_weather/config/api_config.dart';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';
import 'package:ai_weather/features/weather/domain/models/mid_term_weather_model.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/features/weather/utils/weather_calculator_utils.dart';
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
        baseDate: baseInfo.$1, // baseDate
        baseTime: baseInfo.$2, // baseTime
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
      String windDirText = WeatherFormatterUtils.getWindDirectionText(
        windDirection,
      );
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

      final double calculatedFeelsLike;
      if (WeatherCalculatorUtils.isSummerSeason(now)) {
        calculatedFeelsLike =
            WeatherCalculatorUtils.calculateSummerFeelsLikeTemperature(
              temperature,
              humidity,
            );
      } else {
        calculatedFeelsLike =
            WeatherCalculatorUtils.calculateWinterFeelsLikeTemperature(
              temperature,
              windSpeed,
            );
      }

      var currentWeather = CurrentWeather(
        dateTime: dateTime,
        temperature: temperature,
        humidity: humidity,
        windSpeed: windSpeed,
        windDirection: windDirection,
        windDirectionText: windDirText,
        precipitationType: precipitationType,
        precipitationAmount: rainfallAmount,
        feelsLikeTemperature: calculatedFeelsLike,
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
        baseDate: baseInfo.$1, // baseDate
        baseTime: baseInfo.$2, // baseTime
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
  Future<(double? minTemp, double? maxTemp)> _getTMN_TMX_forDate({
    required int nx,
    required int ny,
    required DateTime targetDate,
  }) async {
    final now = DateTime.now();
    final optimalBaseInfo = WeatherApiUtils.getOptimalBaseTimeForDailyTMN_TMX(
      targetDate,
      now,
    );

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 200,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: optimalBaseInfo.$1, // baseDate
        baseTime: optimalBaseInfo.$2, // baseTime
        nx: nx,
        ny: ny,
      );

      final List<KmaSrtFcstApiItem> items = response.result.body.items.item;
      double? minTemp;
      double? maxTemp;

      // fcstDate가 targetDate와 일치하는 TMN/TMX 값을 찾습니다.
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
        if (minTemp != null && maxTemp != null) break;
      }
      return (minTemp, maxTemp);
    } on DioException catch (e) {
      appLogger.e("DioException in _getTMN_TMX_forDate: $e");
      return (null, null);
    } catch (e) {
      appLogger.e("Error in _getTMN_TMX_forDate: $e");
      return (null, null);
    }
  }

  // 단기 예보 캐싱을 위한 변수
  List<DailyShortTermWeather>? _cachedDailyForecast;
  DateTime? _dailyForecastCacheTime;
  String? _dailyForecastCacheKey;

  // KMA 단기 예보
  @override
  Future<List<DailyShortTermWeather>> getShortTermForecast({
    required int nx,
    required int ny,
  }) async {
    final cacheKey = '$nx,$ny';
    // 캐시 확인: 1시간 이내의 유효한 캐시가 있으면 즉시 반환
    if (_cachedDailyForecast != null &&
        _dailyForecastCacheKey == cacheKey &&
        _dailyForecastCacheTime != null &&
        DateTime.now().difference(_dailyForecastCacheTime!) <
            const Duration(hours: 3)) {
      appLogger.i('단기 예보 캐시 사용');
      return _cachedDailyForecast!;
    }

    appLogger.i('단기 예보 API 호출');
    final now = DateTime.now();
    final baseInfo = WeatherApiUtils.getShortTermForecastBaseTime(now);

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        authKey: ApiConfig.kmaServiceKey!,
        numOfRows: 1500,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1, // baseDate
        baseTime: baseInfo.$2, // baseTime
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

      // ... (기존 데이터 처리 로직은 그대로 유지) ...

      final Map<String, Map<String, double>> minMaxTempsByDate = {};
      final Map<String, Map<String, String>> groupedByDateTime = {};

      for (var item in items) {
        final fcstValueAsDouble = double.tryParse(item.fcstValue);

        if (item.category == 'TMN' && fcstValueAsDouble != null) {
          minMaxTempsByDate.putIfAbsent(item.fcstDate, () => {})['TMN'] =
              fcstValueAsDouble;
        } else if (item.category == 'TMX' && fcstValueAsDouble != null) {
          minMaxTempsByDate.putIfAbsent(item.fcstDate, () => {})['TMX'] =
              fcstValueAsDouble;
        } else {
          final dateTimeKey = '${item.fcstDate}_${item.fcstTime}';
          groupedByDateTime.putIfAbsent(dateTimeKey, () => {});
          groupedByDateTime[dateTimeKey]![item.category] = item.fcstValue;
        }
      }

      final yesterday = now.subtract(const Duration(days: 1));
      final (yesterdayMinTemp, yesterdayMaxTemp) = await _getTMN_TMX_forDate(
        nx: nx,
        ny: ny,
        targetDate: yesterday,
      );
      if (yesterdayMinTemp != null && yesterdayMaxTemp != null) {
        minMaxTempsByDate.putIfAbsent(
          WeatherApiUtils.formatDateToYYYYMMDD(yesterday),
          () => {},
        )['TMN'] = yesterdayMinTemp;
        minMaxTempsByDate.putIfAbsent(
          WeatherApiUtils.formatDateToYYYYMMDD(yesterday),
          () => {},
        )['TMX'] = yesterdayMaxTemp;
      }

      final todayDateStr = WeatherApiUtils.formatDateToYYYYMMDD(now);
      if (minMaxTempsByDate[todayDateStr]?['TMN'] == null ||
          minMaxTempsByDate[todayDateStr]?['TMX'] == null) {
        final (todayOptimalMinTemp, todayOptimalMaxTemp) =
            await _getTMN_TMX_forDate(nx: nx, ny: ny, targetDate: now);
        if (todayOptimalMinTemp != null) {
          minMaxTempsByDate.putIfAbsent(todayDateStr, () => {})['TMN'] =
              todayOptimalMinTemp;
        }
        if (todayOptimalMaxTemp != null) {
          minMaxTempsByDate.putIfAbsent(todayDateStr, () => {})['TMX'] =
              todayOptimalMaxTemp;
        }
      }

      final List<HourlyShortTermWeather> hourlyForecastList = [];
      groupedByDateTime.forEach((dateTimeKey, categoryMap) {
        final fcstDateStr = dateTimeKey.substring(0, 8);
        final fcstTimeStr = dateTimeKey.substring(9, 13);

        final year = int.parse(fcstDateStr.substring(0, 4));
        final month = int.parse(fcstDateStr.substring(4, 6));
        final day = int.parse(fcstDateStr.substring(6, 8));
        final hour = int.parse(fcstTimeStr.substring(0, 2));
        final minute = int.parse(fcstTimeStr.substring(2, 4));
        final dateTime = DateTime(year, month, day, hour, minute);

        final temperatureValue =
            categoryMap['T1H'] ?? categoryMap['TMP'] ?? '0.0';

        hourlyForecastList.add(
          HourlyShortTermWeather(
            dateTime: dateTime,
            temperature: double.tryParse(temperatureValue) ?? 0.0,
            humidity: int.tryParse(categoryMap['REH'] ?? '0') ?? 0,
            windSpeed: double.tryParse(categoryMap['WSD'] ?? '0.0') ?? 0.0,
            windDirection: int.tryParse(categoryMap['VEC'] ?? '0') ?? 0,
            skyStatus: SkyStatus.fromCode(categoryMap['SKY'] ?? '1'),
            precipitationType: PrecipitationType.fromCode(
              categoryMap['PTY'] ?? '0',
            ),
            precipitationAmount:
                double.tryParse(categoryMap['PCP'] ?? '0.0') ?? 0.0,
            pop: int.tryParse(categoryMap['POP'] ?? '0') ?? 0,
            snowAccumulation:
                double.tryParse(categoryMap['SNO'] ?? '0.0') ?? 0.0,
            feelsLikeTemperature: 0.0,
          ),
        );
      });

      final Map<String, List<HourlyShortTermWeather>> finalGroupedByDate = {};
      for (var hourlyData in hourlyForecastList) {
        final dateKey = DateFormat('yyyyMMdd').format(hourlyData.dateTime);
        finalGroupedByDate.putIfAbsent(dateKey, () => []).add(hourlyData);
      }

      final List<DailyShortTermWeather> dailyForecastList = [];
      final yesterdayDateStr = WeatherApiUtils.formatDateToYYYYMMDD(yesterday);

      if (minMaxTempsByDate[yesterdayDateStr]?['TMN'] != null &&
          minMaxTempsByDate[yesterdayDateStr]?['TMX'] != null) {
        dailyForecastList.add(
          DailyShortTermWeather(
            date: yesterday,
            minTemperature: minMaxTempsByDate[yesterdayDateStr]!['TMN']!,
            maxTemperature: minMaxTempsByDate[yesterdayDateStr]!['TMX']!,
            tempRange:
                minMaxTempsByDate[yesterdayDateStr]!['TMX']! -
                minMaxTempsByDate[yesterdayDateStr]!['TMN']!,
            representativeSkyStatus: SkyStatus.sunny, // 어제는 시간별 예보가 없으므로 알 수 없음
            representativePrecipitationType: PrecipitationType.none, // 알 수 없음
            maxPop: 0, // 알 수 없음
            hourlyData: [], // 어제는 시간별 상세 예보 데이터 없음
          ),
        );
        dailyForecastList.add(
          DailyShortTermWeather(
            date: now,
            minTemperature: minMaxTempsByDate[todayDateStr]!['TMN']!,
            maxTemperature: minMaxTempsByDate[todayDateStr]!['TMX']!,
            tempRange:
                minMaxTempsByDate[todayDateStr]!['TMX']! -
                minMaxTempsByDate[todayDateStr]!['TMN']!,
            representativeSkyStatus: SkyStatus.sunny,
            representativePrecipitationType: PrecipitationType.none,
            maxPop: 0,
            hourlyData: [],
          ),
        );
      }

      finalGroupedByDate.forEach((dateKey, hourlyDataForDay) {
        double? dayMinTemp = minMaxTempsByDate[dateKey]?['TMN'];
        double? dayMaxTemp = minMaxTempsByDate[dateKey]?['TMX'];

        if (dayMinTemp == null &&
            dayMaxTemp == null &&
            hourlyDataForDay.isNotEmpty) {
          final List<double> temperaturesFromHourly = hourlyDataForDay
              .map((e) => e.temperature)
              .toList();

          if (temperaturesFromHourly.isNotEmpty) {
            dayMinTemp = temperaturesFromHourly.reduce((a, b) => a < b ? a : b);
            dayMaxTemp = temperaturesFromHourly.reduce((a, b) => a > b ? a : b);
          }
        }

        final double finalMinTemp = dayMinTemp ?? 0.0;
        final double finalMaxTemp = dayMaxTemp ?? 0.0;

        final double tempRange = finalMaxTemp - finalMinTemp;

        final skyStatusCounts = hourlyDataForDay
            .map((e) => e.skyStatus)
            .fold<Map<SkyStatus, int>>({}, (map, status) {
              map[status] = (map[status] ?? 0) + 1;
              return map;
            });
        final representativeSkyStatus = skyStatusCounts.entries
            .reduce((a, b) => a.value > b.value ? a : b)
            .key;

        final representativePrecipitationType = hourlyDataForDay
            .map((e) => e.precipitationType)
            .reduce((a, b) {
              if (a.code > b.code) return a;
              return b;
            });

        final maxPop = hourlyDataForDay
            .map((e) => e.pop)
            .reduce((a, b) => a > b ? a : b);

        final year = int.parse(dateKey.substring(0, 4));
        final month = int.parse(dateKey.substring(4, 6));
        final day = int.parse(dateKey.substring(6, 8));
        final date = DateTime(year, month, day);

        dailyForecastList.add(
          DailyShortTermWeather(
            date: date,
            minTemperature: finalMinTemp,
            maxTemperature: finalMaxTemp,
            tempRange: tempRange,
            representativeSkyStatus: representativeSkyStatus,
            representativePrecipitationType: representativePrecipitationType,
            maxPop: maxPop,
            hourlyData: hourlyDataForDay,
          ),
        );
      });

      dailyForecastList.sort((a, b) => a.date.compareTo(b.date));

      // 캐시 업데이트
      _cachedDailyForecast = dailyForecastList;
      _dailyForecastCacheTime = DateTime.now();
      _dailyForecastCacheKey = cacheKey;

      return dailyForecastList;
    } catch (e, stack) {
      appLogger.e(
        "WeatherRepositoryImpl.getShortTermForecast 오류: $e",
        error: e,
        stackTrace: stack,
      );
      throw Exception('단기 예보를 가져오는 데 실패했습니다: $e');
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
      // 1. 중기 기온 예보
      final midTaResponse = await _midTermDataSource
          .getMidTermTemperatureForecast(
            authKey: ApiConfig.kmaServiceKey!,
            pageNo: 1,
            numOfRows: 1,
            dataType: 'JSON',
            regId: regId,
            tmFc: tmFc,
          );

      // 2. 중기 육상 예보
      final midLandResponse = await _midTermDataSource.getMidTermLandForecast(
        authKey: ApiConfig.kmaServiceKey!,
        pageNo: 1,
        numOfRows: 1,
        dataType: 'JSON',
        regId: regId,
        tmFc: tmFc,
      );

      // // 3. 중기 전망
      // final midOutlookResponse = await _midTermDataSource.getMidTermOutlook(
      //   authKey: ApiConfig.kmaServiceKey!,
      //   pageNo: 1,
      //   numOfRows: 1,
      //   dataType: 'JSON',
      //   stnId: stnId,
      //   tmFc: tmFc,
      // );

      if (midTaResponse.response.header.resultCode != '00' ||
          midTaResponse.response.body.items.item.isEmpty) {
        appLogger.e("MidTermTemperatureForecast API 실패 또는 데이터 없음");
      }
      if (midLandResponse.response.header.resultCode != '00' ||
          midLandResponse.response.body.items.item.isEmpty) {
        appLogger.e("MidTermLandForecast API 실패 또는 데이터 없음");
      }
      // if (midOutlookResponse.response.header.resultCode != '00' ||
      //     midOutlookResponse.response.body.items.item.isEmpty) {
      //   appLogger.e("MidTermOutlook API 실패 또는 데이터 없음");
      // }

      final midTaItem = midTaResponse.response.body.items.item.first;
      final midLandItem = midLandResponse.response.body.items.item.first;
      // final midOutlookItem = midOutlookResponse.response.body.items.item.first;

      final List<DailyMidTermWeather> dailyForecasts = [];
      final DateTime baseDate = DateTime.parse(
        tmFc.substring(0, 8),
      ); // YYYYMMDDHHMM -> YYYYMMDD

      // 4일 후부터 7일 후까지 일별 데이터 통합
      for (int i = 4; i <= 7; i++) {
        final forecastDate = baseDate.add(Duration(days: i));

        // 중기 기온 예보 데이터 추출
        int minTemp = 0, maxTemp = 0;
        int? minTempLowConf, minTempHighConf, maxTempLowConf, maxTempHighConf;
        switch (i) {
          case 4:
            minTemp = midTaItem.taMin4 ?? 0;
            maxTemp = midTaItem.taMax4 ?? 0;
            minTempLowConf = midTaItem.taMin4Low;
            minTempHighConf = midTaItem.taMin4High;
            maxTempLowConf = midTaItem.taMax4Low;
            maxTempHighConf = midTaItem.taMax4High;
            break;
          case 5:
            minTemp = midTaItem.taMin5 ?? 0;
            maxTemp = midTaItem.taMax5 ?? 0;
            minTempLowConf = midTaItem.taMin5Low;
            minTempHighConf = midTaItem.taMin5High;
            maxTempLowConf = midTaItem.taMax5Low;
            maxTempHighConf = midTaItem.taMax5High;
            break;
          case 6:
            minTemp = midTaItem.taMin6 ?? 0;
            maxTemp = midTaItem.taMax6 ?? 0;
            minTempLowConf = midTaItem.taMin6Low;
            minTempHighConf = midTaItem.taMin6High;
            maxTempLowConf = midTaItem.taMax6Low;
            maxTempHighConf = midTaItem.taMax6High;
            break;
          case 7:
            minTemp = midTaItem.taMin7 ?? 0;
            maxTemp = midTaItem.taMax7 ?? 0;
            minTempLowConf = midTaItem.taMin7Low;
            minTempHighConf = midTaItem.taMin7High;
            maxTempLowConf = midTaItem.taMax7Low;
            maxTempHighConf = midTaItem.taMax7High;
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
            minTempLowConfidence: minTempLowConf,
            minTempHighConfidence: minTempHighConf,
            maxTempLowConfidence: maxTempLowConf,
            maxTempHighConfidence: maxTempHighConf,
            precipitationProbMorning: probMorning,
            precipitationProbAfternoon: probAfternoon,
            weatherDescriptionMorning: descMorning,
            weatherDescriptionAfternoon: descAfternoon,
          ),
        );
      }

      // regId와 stnId를 통해 regionName을 찾는 로직 추가 (MidTermApiUtils에서 헬퍼 함수 구현 고려)
      // 현재는 일단 임시로 regId를 지역 이름으로 간주
      final String regionName =
          MidTermApiUtils.getRegionNameFromRegId(regId) ?? regId;
      final String tmFcDatePart = tmFc.substring(0, 8);
      final DateTime tmFcParseDateTime = DateTime.parse(
        "${tmFcDatePart.substring(0, 4)}-"
        "${tmFcDatePart.substring(4, 6)}-"
        "${tmFcDatePart.substring(6, 8)}",
      );

      //  publishedTime (발표 시각) 파싱 수정
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
        regionName: regionName, // regId나 stnId를 기반으로 실제 지역명 조회 필요
        publishedTime: publishedTime,
        // overallOutlook: midOutlookItem.wfSv ?? '전망 정보 없음',
        overallOutlook: '전망 정보 없음',
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
