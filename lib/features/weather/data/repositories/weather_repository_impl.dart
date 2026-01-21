import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/core/error/failures.dart';
import 'package:ai_weather/core/logger/app_logger_interface.dart';
import 'package:ai_weather/core/utils/date_time_extensions.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/models/kma_mid_land_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_mid_tmp_fcst_response_models.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_mid_term_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/mid_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';

part 'weather_repository_impl.g.dart';

@Riverpod(keepAlive: true)
KmaShortTermApiDataSource kmaShortTermApiDataSource(Ref ref) {
  return KmaShortTermApiDataSource(
    ref.watch(dioProvider),
    baseUrl:
        "https://apihub.kma.go.kr/api/typ02/openApi/VilageFcstInfoService_2.0/",
  );
}

@Riverpod(keepAlive: true)
KmaMidTermApiDataSource kmaMidTermApiDataSource(Ref ref) {
  return KmaMidTermApiDataSource(
    ref.watch(dioProvider),
    baseUrl: "https://apihub.kma.go.kr/api/typ02/openApi/MidFcstInfoService/",
  );
}

class WeatherRepositoryImpl implements WeatherRepository {
  final KmaShortTermApiDataSource _shortTermDataSource;
  final KmaMidTermApiDataSource _midTermDataSource;
  final IAppLogger _logger;

  WeatherRepositoryImpl(
    this._shortTermDataSource,
    this._midTermDataSource,
    this._logger,
  );

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
        numOfRows: 8,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw ServerFailure('초단기 실황 에러: ${response.result.header.resultMsg}');
      }

      final items = response.result.body.items.item;
      if (items.isEmpty) {
        throw EmptyDataFailure('초단기실황 데이터가 없습니다.');
      }

      return response.toEntity();
    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  // KMA 초단기 예보
  @override
  Future<List<HourlyWeather>> getUltraSrtForecastList({
    required int nx,
    required int ny,
  }) async {
    final now = DateTime.now();
    final baseInfo = WeatherApiUtils.getUltraSrtForecastBaseTime(now);

    try {
      final response = await _shortTermDataSource.getUltraSrtFcst(
        numOfRows: 60,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.response.header.resultCode != '00') {
        throw ServerFailure('초단기 예보 에러: ${response.response.header.resultMsg}');
      }

      final items = response.response.body.items.item;
      if (items.isEmpty) {
        throw EmptyDataFailure('초단기예보 데이터가 없습니다.');
      }

      return response.toEntityList();
    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e) {
      throw ServerFailure(e.toString());
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

    _logger.i(
      '일별 단기예보 상세 API 호출 시작. '
      'TargetDate: ${DateFormat('yyyy-MM-dd').format(targetDate)}, '
      'BaseDate: ${baseInfo.$1}, BaseTime: ${baseInfo.$2}',
    );

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        numOfRows: 200,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw ServerFailure(
          '단기예보 TMN/TMX API 호출 실패: ${response.result.header.resultMsg}',
        );
      }

      return response.toMinMaxEntity(targetDate);
    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  // KMA 단기 예보
  @override
  Future<List<DailyShortTermWeather>> getShortTermForecast({
    required int nx,
    required int ny,
  }) async {
    _logger.i('단기 예보 API 호출 (DailyShortTermWeather)');
    final now = DateTime.now();
    final todayDateStr = DateFormat('yyyyMMdd').format(now);
    final baseInfo = WeatherApiUtils.getShortTermForecastBaseTime(now);

    try {
      final response = await _shortTermDataSource.getShortTermForecast(
        numOfRows: 1100,
        pageNo: 1,
        dataType: 'JSON',
        baseDate: baseInfo.$1,
        baseTime: baseInfo.$2,
        nx: nx,
        ny: ny,
      );

      if (response.result.header.resultCode != '00') {
        throw ServerFailure(
          '단기예보 API 호출 실패: ${response.result.header.resultMsg}',
        );
      }

      final baseDateDt = DateTime.parse(baseInfo.$1);
      final maxValidDate = baseDateDt.getMaxValidDateForShortTerm(baseInfo.$2);

      return response.toDailyEntityList(
        maxValidDate: maxValidDate,
        todayDateStr: todayDateStr,
      );
    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e) {
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
          pageNo: 1,
          numOfRows: 1,
          dataType: 'JSON',
          regId: regId,
          tmFc: tmFc,
        ),
        _midTermDataSource.getMidTermLandForecast(
          pageNo: 1,
          numOfRows: 1,
          dataType: 'JSON',
          regId: regId,
          tmFc: tmFc,
        ),
      ]);

      final taResponse = results[0] as KmaMidTmpFcstApiResponse;
      final landResponse = results[1] as KmaMidLandFcstApiResponse;

      if (taResponse.response.header.resultCode != '00' ||
          taResponse.response.body.items.item.isEmpty ||
          landResponse.response.header.resultCode != '00' ||
          landResponse.response.body.items.item.isEmpty) {
        throw EmptyDataFailure('중기 예보 데이터가 유효하지 않거나 비어 있습니다.');
      }

      final tempMap = taResponse.response.body.items.item.first.toTempMap();
      final landMap = landResponse.response.body.items.item.first.toLandMap();

      final List<DailyMidTermWeather> dailyForecasts = [];
      final DateTime baseDate = DateTime.parse(tmFc.substring(0, 8));

      for (int i = 4; i <= 7; i++) {
        final t = tempMap[i]!;
        final l = landMap[i]!;

        dailyForecasts.add(
          DailyMidTermWeather(
            date: baseDate.add(Duration(days: i)),
            dayOffset: i,
            minTemperature: t.min,
            maxTemperature: t.max,
            precipitationProbMorning: l.probAm,
            precipitationProbAfternoon: l.probPm,
            weatherDescriptionMorning: l.descAm,
            weatherDescriptionAfternoon: l.descPm,
          ),
        );
      }

      final DateTime publishedTime = DateTime.parse(
        "${tmFc.substring(0, 4)}-${tmFc.substring(4, 6)}-${tmFc.substring(6, 8)} "
        "${tmFc.substring(8, 10)}:${tmFc.substring(10, 12)}:00",
      );

      return MidTermWeather(
        regionId: regId,
        regionName: '알 수 없음', // 필요시 외부에서 주입
        publishedTime: publishedTime,
        dailyForecasts: dailyForecasts,
      );
    } on DioException catch (e) {
      throw NetworkFailure();
    } catch (e) {
      throw ServerFailure('중기 예보를 가져오는 데 실패했습니다: $e');
    }
  }
}
