import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/domain/models/mid_term_weather_model.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ai_weather/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';

import 'package:ai_weather/app/providers/app_providers.dart';

part 'weather_providers.g.dart';

@Riverpod(keepAlive: true)
KmaShortTermApiDataSource kmaShortTermApiDataSource(Ref ref) {
  return KmaShortTermApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
KmaMidTermApiDataSource kmaMidTermApiDataSource(Ref ref) {
  return KmaMidTermApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true) // 앱 전역에서 Repository 인스턴스를 유지
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepositoryImpl(
    ref.read(kmaShortTermApiDataSourceProvider),
    ref.read(kmaMidTermApiDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
Future<CurrentWeather> currentWeather(
  Ref ref, {
  required int nx,
  required int ny,
}) async {
  return ref.read(weatherRepositoryProvider).getCurrentWeather(nx: nx, ny: ny);
}

@Riverpod(keepAlive: true)
Future<List<HourlyWeatherModel>> hourlyUltraSrtForecast(
  Ref ref, {
  required int nx,
  required int ny,
}) async {
  return ref
      .read(weatherRepositoryProvider)
      .getUltraSrtForecastList(nx: nx, ny: ny);
}

@Riverpod(keepAlive: true)
Future<List<DailyShortTermWeather>> dailyShortTermForecast(
  Ref ref, {
  required int nx,
  required int ny,
}) async {
  return ref
      .read(weatherRepositoryProvider)
      .getShortTermForecast(nx: nx, ny: ny);
}

@Riverpod(keepAlive: true)
Future<MidTermWeather> midTermWeather(
  Ref ref, {
  required String city, // 도시 이름을 받아서 regId와 stnId를 찾습니다.
}) async {
  // 도시 이름으로 regId와 stnId를 찾습니다.
  // 이 부분은 임시로 '서울'을 예시로 드는 경우, 혹은 실제 사용자 선택/위치기반 도시명으로 대체될 것임.
  final targetCityData = MidTermApiUtils.detailedMidTermRegionData.firstWhere(
    (data) => data.city == city,
    orElse: () => throw Exception('중기 예보를 위한 도시($city)의 상세 정보를 찾을 수 없습니다.'),
  );

  final String detailedRegId = targetCityData.regId; // 상세 도시 regId

  // 중기 육상 예보 (LandFcst) API는 광역 regId를 요구할 가능성이 높으므로 변환
  final String landFcstRegId = MidTermApiUtils.getBroadAreaRegIdForLandForecast(
    detailedRegId,
  );

  // 중기 전망 (Outlook) API는 stnId(지점번호)를 요구하며, 이는 광역 단위 코드
  final String outlookStnId;
  // detailedRegId에 해당하는 MidTermOutlookRegion을 찾아 stnId를 얻어야 합니다.
  // 여기서는 targetCityData.region 필드를 이용하여 MidTermOutlookRegion Enum에 매핑합니다.
  switch (targetCityData.region) {
    case '서울·인천·경기도':
      outlookStnId = MidTermOutlookRegion.seoulIncheonGyeonggi.regionCode;
      break;
    case '강원도':
      outlookStnId = MidTermOutlookRegion.gangwon.regionCode;
      break;
    case '충청북도':
      outlookStnId = MidTermOutlookRegion.chungcheongbuk.regionCode;
      break;
    case '대전·세종·충청남도':
      outlookStnId =
          MidTermOutlookRegion.daejeonSejongChungcheongnam.regionCode;
      break;
    case '전라북도':
      outlookStnId = MidTermOutlookRegion.jeollabuk.regionCode;
      break;
    case '광주·전라남도':
      outlookStnId = MidTermOutlookRegion.gwangjuJeollanam.regionCode;
      break;
    case '대구·경상북도':
      outlookStnId = MidTermOutlookRegion.daeguGyeongsangbuk.regionCode;
      break;
    case '부산·울산·경상남도':
      outlookStnId = MidTermOutlookRegion.busanUlsanGyeongsangnam.regionCode;
      break;
    case '제주도':
      outlookStnId = MidTermOutlookRegion.jeju.regionCode;
      break;
    default:
      appLogger.w(
        'Unmapped region for Outlook stnId: ${targetCityData.region}. Using National outlook.',
      );
      outlookStnId = MidTermOutlookRegion.national.regionCode; // 기본값: 전국
      break;
  }

  final now = DateTime.now();
  final midTermBaseInfo = MidTermApiUtils.getMidTermBaseTime(now);
  final tmFc = '${midTermBaseInfo.baseDate}${midTermBaseInfo.baseTime}';

  return ref
      .read(weatherRepositoryProvider)
      .getMidTermWeather(
        regId: detailedRegId, // 기온 예보에는 상세 도시 regId 사용
        stnId: outlookStnId, // 전망에는 광역 stnId 사용
        tmFc: tmFc,
      );
}
