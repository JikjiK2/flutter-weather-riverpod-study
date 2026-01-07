import 'package:ai_weather/features/weather/domain/models/mid_term_region_model.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:intl/intl.dart';

class WeatherApiUtils {
  // 기상청 단기예보 발표 시각 (24시간 기준)
  static const List<int> shortTermForecastBaseTimes = [
    2,
    5,
    8,
    11,
    14,
    17,
    20,
    23,
  ];

  // formatDateToYYYYMMDD 헬퍼 메서드 추가
  static String formatDateToYYYYMMDD(DateTime date) {
    return DateFormat('yyyyMMdd').format(date);
  }

  // formatDateToDash 헬퍼 메서드 추가
  static String formatDateToDash(String yyyyMMdd) {
    if (yyyyMMdd.length != 8) {
      throw FormatException(
        "Input date string must be in YYYYMMDD format: $yyyyMMdd",
      );
    }
    return '${yyyyMMdd.substring(0, 4)}-${yyyyMMdd.substring(4, 6)}-${yyyyMMdd.substring(6, 8)}';
  }

  // 특정 날짜(targetDate)의 TMN/TMX를 찾기 위한 최적의 base_date와 base_time을 반환하는 함수
  // (단기 예보 시간표에 따라 0200/0500 발표가 최저기온, 0800/1100 발표가 최고기온 포함)
  // 편의상 TMN과 TMX를 한 번의 호출로 가져오기 위해 '이른 시간' 발표 (0200)을 선호합니다.
  // 만약 0200 이전에 호출하는 경우 전날 2300으로 넘어갑니다.
  static (String baseDate, String baseTime) getOptimalBaseTimeForDailyTMN_TMX(
    DateTime targetDate,
    DateTime currentQueryTime,
  ) {
    String baseDateStr = formatDateToYYYYMMDD(targetDate);
    String baseTimeStr = '0200'; // 최저기온 포함 발표 (오전 2시)

    // 만약 targetDate가 오늘이고, 현재 시각이 오전 2시보다 빠르다면, 전날 2300 발표를 확인해야 합니다.
    // 이는 '오늘'의 TMN/TMX가 2300 발표에서 fcstDate가 '오늘'로 나오는 경우를 위함입니다.
    if (targetDate.year == currentQueryTime.year &&
        targetDate.month == currentQueryTime.month &&
        targetDate.day == currentQueryTime.day &&
        currentQueryTime.hour < 2) {
      final prevDay = targetDate.subtract(const Duration(days: 1));
      baseDateStr = formatDateToYYYYMMDD(prevDay);
      baseTimeStr = '2300'; // 전날 23시 발표 데이터 확인
    }

    // 또는, KMA 시간표를 보고 더 복잡한 로직을 구성할 수도 있습니다.
    // 예를 들어, targetDate가 오늘인데 현재 시간이 0200~0500 사이라면 0200 사용,
    // 0500~0800 사이라면 0500 사용 (이 경우 TMN만 있을 확률 높음)
    // 그러나 가장 보편적인 것은 0200 발표에서 오늘, 내일, 모레의 TMN/TMX를 찾는 것입니다.
    // 그리고 오늘 0200 이전에 조회한다면 전날 2300 발표를 찾는 것이 좋습니다.

    return (baseDateStr, baseTimeStr);
  }

  /// 현재 시각을 기준으로 기상청 단기예보의 가장 최신 baseDate와 baseTime을 계산합니다.
  /// (매 3시간마다 발표: 02, 05, 08, 11, 14, 17, 20, 23시)
  /// API 제공 시간: 발표 시각 + 10분 이후 (예: 02:00 발표 -> 02:10 이후 데이터 유효)
  /// -> 따라서 현재 시각에서 '10분'을 빼서 API 제공 시간보다 과거 시점으로 맞춘 후 계산
  static (String, String) getShortTermForecastBaseTime(DateTime now) {
    // API 제공 시간(발표시각 + 10분)을 기준으로 하므로,
    // 현재 시각에서 10분을 뺀 시점을 기준으로 발표 시각을 계산합니다.
    DateTime targetTime = now.subtract(const Duration(minutes: 10));

    int currentHour = targetTime.hour;
    int currentMinute = targetTime.minute;

    String baseDate = DateFormat('yyyyMMdd').format(targetTime);
    int baseHour = shortTermForecastBaseTimes.last; // 기본값은 마지막 발표 시각 (23시)

    for (int i = shortTermForecastBaseTimes.length - 1; i >= 0; i--) {
      int apiBaseHour = shortTermForecastBaseTimes[i];
      // 현재 시각이 발표 시각과 같거나 더 이후라면 해당 발표 시각 사용
      // 분(minute)은 0부터 시작하므로 `currentMinute >= 0`은 항상 참이지만 가독성을 위해 남겨둠
      if (currentHour > apiBaseHour ||
          (currentHour == apiBaseHour && currentMinute >= 0)) {
        baseHour = apiBaseHour;
        break;
      }
      if (i == 0 && currentHour < apiBaseHour) {
        // 자정 이후 첫 발표 시각(02시) 전이라면 이전 날짜의 마지막 발표 시각(23시)을 사용
        baseHour = shortTermForecastBaseTimes.last; // 23시
        baseDate = DateFormat(
          'yyyyMMdd',
        ).format(targetTime.subtract(const Duration(days: 1)));
        break;
      }
    }

    String baseTimeString = '${baseHour.toString().padLeft(2, '0')}00';
    return (baseDate, baseTimeString);
  }

  /// 현재 시각을 기준으로 기상청 초단기실황의 가장 최신 baseDate와 baseTime을 계산합니다.
  /// (매 시간 정시에 생성, 10분마다 업데이트, API 제공 시간: 기준 시각 + 10분 이후)
  /// -> 현재 시각에서 '10분'을 빼서 API 제공 시간보다 과거 시점으로 맞춘 후 계산
  static (String, String) getUltraSrtNcstBaseTime(DateTime now) {
    // API 제공 시간(기준 시각 + 10분)을 기준으로 하므로,
    // 현재 시각에서 10분을 뺀 시점을 기준으로 base_time을 계산합니다.
    DateTime targetTime = now.subtract(const Duration(minutes: 10));

    // 초단기실황의 base_time은 매시간 '00분'에 생성됩니다.
    // targetTime이 12:15 이면 12:00, 12:05 이면 12:00
    // 즉, targetTime의 시간과 00분을 base_time으로 사용하면 됩니다.
    DateTime baseDateTime = DateTime(
      targetTime.year,
      targetTime.month,
      targetTime.day,
      targetTime.hour,
      0,
    );

    String baseDate = DateFormat('yyyyMMdd').format(baseDateTime);
    String baseTime = DateFormat(
      'HHmm',
    ).format(baseDateTime); // 항상 'HH00' 형태가 될 것입니다.

    return (baseDate, baseTime);
  }

  /// 현재 시각을 기준으로 기상청 초단기예보의 가장 최신 baseDate와 baseTime을 계산합니다.
  /// (매시간 30분에 생성, 10분마다 업데이트, API 제공 시간: 생성 시각 + 15분 이후)
  /// -> 현재 시각에서 '15분'을 빼서 API 제공 시간보다 과거 시점으로 맞춘 후 계산
  static (String, String) getUltraSrtForecastBaseTime(DateTime now) {
    // API 제공 시간(생성 시각 + 15분, 즉 'XX시 45분')을 기준으로 하므로,
    // 현재 시각에서 15분을 뺀 시점을 기준으로 base_time을 계산합니다.
    DateTime targetTime = now.subtract(const Duration(minutes: 15));

    // `targetTime`의 시각을 기준으로 가장 가까운 과거의 ':30분' 시각을 찾습니다.
    // 예를 들어, targetTime이 12:55 이면 12:30
    // targetTime이 12:25 이면 11:30
    int minute = 30; // 초단기예보 base_time은 'XX30'으로 고정

    DateTime baseDateTime;
    if (targetTime.minute < minute) {
      // 00분~29분 사이라면 이전 시간의 30분
      baseDateTime = DateTime(
        targetTime.year,
        targetTime.month,
        targetTime.day,
        targetTime.hour - 1,
        minute,
      );
    } else {
      // 30분~59분 사이라면 현재 시간의 30분
      baseDateTime = DateTime(
        targetTime.year,
        targetTime.month,
        targetTime.day,
        targetTime.hour,
        minute,
      );
    }

    String baseDate = DateFormat('yyyyMMdd').format(baseDateTime);
    String baseTime = DateFormat(
      'HHmm',
    ).format(baseDateTime); // 항상 'HH30' 형태가 될 것입니다.

    return (baseDate, baseTime);
  }

  static SkyStatus getSkyStatusFromFcstValue(String fcstValue) {
    switch (int.parse(fcstValue)) {
      case 1:
        return SkyStatus.sunny;
      case 3:
        return SkyStatus.partlyCloudy;
      case 4:
        return SkyStatus.cloudy;
      default:
        return SkyStatus.none; // 기본값 또는 SkyStatus.fromCode 함수 사용
    }
  }

  static PrecipitationType getPrecipitationTypeFromFcstValue(String fcstValue) {
    switch (int.parse(fcstValue)) {
      case 0:
        return PrecipitationType.none;
      case 1:
        return PrecipitationType.rain;
      case 2:
        return PrecipitationType.rainSnow;
      case 3:
        return PrecipitationType.snow;
      case 4:
        return PrecipitationType.shower;
      case 5:
        return PrecipitationType.drizzle;
      case 6:
        return PrecipitationType.drizzleSnow;
      case 7:
        return PrecipitationType.snowFlurry;
      default:
        return PrecipitationType
            .none; // 기본값 또는 PrecipitationType.fromCode 함수 사용
    }
  }
}

enum MidTermOutlookRegion {
  gangwon(regionCode: '105', name: '강원도'),
  national(regionCode: '108', name: '전국'),
  seoulIncheonGyeonggi(regionCode: '109', name: '서울, 인천, 경기도'),
  chungcheongbuk(regionCode: '131', name: '충청북도'),
  daejeonSejongChungcheongnam(regionCode: '133', name: '대전, 세종, 충청남도'),
  jeollabuk(regionCode: '146', name: '전라북도'),
  gwangjuJeollanam(regionCode: '156', name: '광주, 전라남도'),
  daeguGyeongsangbuk(regionCode: '143', name: '대구, 경상북도'),
  busanUlsanGyeongsangnam(regionCode: '159', name: '부산, 울산, 경상남도'),
  jeju(regionCode: '184', name: '제주도');

  final String regionCode;
  final String name;
  const MidTermOutlookRegion({required this.regionCode, required this.name});
}

// 중기 육상 예보 구역 코드 정보
enum MidTermLandForecastRegion {
  seoulIncheonGyeonggi(regionCode: '11B00000', name: '서울, 인천, 경기도'),
  gangwonYeongseo(regionCode: '11D10000', name: '강원도영서'),
  gangwonYeongdong(regionCode: '11D20000', name: '강원도영동'),
  daejeonSejongChungcheongnam(regionCode: '11C20000', name: '대전, 세종, 충청남도'),
  chungcheongbuk(regionCode: '11C10000', name: '충청북도'),
  gwangjuJeollanam(regionCode: '11F20000', name: '광주, 전라남도'),
  jeollabuk(regionCode: '11F10000', name: '전라북도'),
  daeguGyeongsangbuk(regionCode: '11H10000', name: '대구, 경상북도'),
  busanUlsanGyeongsangnam(regionCode: '11H20000', name: '부산, 울산, 경상남도'),
  jeju(regionCode: '11G00000', name: '제주도');

  final String regionCode;
  final String name;
  const MidTermLandForecastRegion({
    required this.regionCode,
    required this.name,
  });

  // 위도/경도를 받아 해당 MidTermLandForecastRegion 객체를 반환하는 헬퍼 함수 (추후 구현)
  // static MidTermLandForecastRegion fromCoordinates(double latitude, double longitude) {
  //   // TODO: 위도/경도와 행정구역 매핑 로직 구현 (역지오코딩 필요)
  //   // 예를 들어, 어떤 시/도에 속하는지에 따라 해당 지역 코드 반환
  //   // 현재는 예시로 서울-경기 지역을 반환
  //   return MidTermLandForecastRegion.seoulIncheonGyeonggi;
  // }
}

class MidTermApiUtils {
  // 중기 예보의 baseDate와 baseTime을 계산하는 함수
  static ({String baseDate, String baseTime}) getMidTermBaseTime(DateTime now) {
    // 중기 예보는 일 2회(06:00, 18:00) 생성되며 발표시각을 입력
    // 최근 24시간 자료만 제공

    String baseDate;
    String baseTime;

    // 현재 시간이 18시 00분 이후라면 오늘 18시 예보를 요청 (내일부터 예보)
    if (now.hour >= 18) {
      baseDate =
          '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}';
      baseTime = '1800';
    }
    // 현재 시간이 06시 00분 이후이고 18시 이전이라면 오늘 06시 예보를 요청 (내일부터 예보)
    else if (now.hour >= 6) {
      baseDate =
          '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}';
      baseTime = '0600';
    }
    // 현재 시간이 06시 이전이라면 전날 18시 예보를 요청 (오늘부터 예보)
    else {
      final yesterday = now.subtract(const Duration(days: 1));
      baseDate =
          '${yesterday.year}${yesterday.month.toString().padLeft(2, '0')}${yesterday.day.toString().padLeft(2, '0')}';
      baseTime = '1800';
    }

    return (baseDate: baseDate, baseTime: baseTime);
  }

  // 상세 도시별 중기 기온/육상 예보 코드 리스트
  static final List<MidTermRegion> detailedMidTermRegion = [
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '서울',
      regId: '11B10101',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '인천',
      regId: '11B20201',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '수원',
      regId: '11B20601',
      isCommunicated: true,
    ),
    MidTermRegion(region: '서울·인천·경기도', city: '성남', regId: '11B20605'),
    MidTermRegion(region: '서울·인천·경기도', city: '안양', regId: '11B20602'),
    MidTermRegion(region: '서울·인천·경기도', city: '광명', regId: '11B10103'),
    MidTermRegion(region: '서울·인천·경기도', city: '과천', regId: '11B10102'),
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '평택',
      regId: '11B20606',
      isCommunicated: true,
    ),
    MidTermRegion(region: '서울·인천·경기도', city: '오산', regId: '11B20603'),
    MidTermRegion(region: '서울·인천·경기도', city: '의왕', regId: '11B20609'),
    MidTermRegion(region: '서울·인천·경기도', city: '용인', regId: '11B20612'),
    MidTermRegion(region: '서울·인천·경기도', city: '군포', regId: '11B20610'),
    MidTermRegion(region: '서울·인천·경기도', city: '안성', regId: '11B20611'),
    MidTermRegion(region: '서울·인천·경기도', city: '화성', regId: '11B20604'),
    MidTermRegion(region: '서울·인천·경기도', city: '양평', regId: '11B20503'),
    MidTermRegion(region: '서울·인천·경기도', city: '구리', regId: '11B20501'),
    MidTermRegion(region: '서울·인천·경기도', city: '남양주', regId: '11B20502'),
    MidTermRegion(region: '서울·인천·경기도', city: '하남', regId: '11B20504'),
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '이천',
      regId: '11B20701',
      isCommunicated: true,
    ),
    MidTermRegion(region: '서울·인천·경기도', city: '여주', regId: '11B20703'),
    MidTermRegion(region: '서울·인천·경기도', city: '광주', regId: '11B20702'),
    MidTermRegion(region: '서울·인천·경기도', city: '의정부', regId: '11B20301'),
    MidTermRegion(region: '서울·인천·경기도', city: '고양', regId: '11B20302'),
    MidTermRegion(
      region: '서울·인천·경기도',
      city: '파주',
      regId: '11B20305',
      isCommunicated: true,
    ),
    MidTermRegion(region: '서울·인천·경기도', city: '양주', regId: '11B20304'),
    MidTermRegion(region: '서울·인천·경기도', city: '동두천', regId: '11B20401'),
    MidTermRegion(region: '서울·인천·경기도', city: '연천', regId: '11B20402'),
    MidTermRegion(region: '서울·인천·경기도', city: '포천', regId: '11B20403'),
    MidTermRegion(region: '서울·인천·경기도', city: '가평', regId: '11B20404'),
    MidTermRegion(region: '서울·인천·경기도', city: '강화', regId: '11B20101'),
    MidTermRegion(region: '서울·인천·경기도', city: '김포', regId: '11B20102'),
    MidTermRegion(region: '서울·인천·경기도', city: '시흥', regId: '11B20202'),
    MidTermRegion(region: '서울·인천·경기도', city: '부천', regId: '11B20204'),
    MidTermRegion(region: '서울·인천·경기도', city: '안산', regId: '11B20203'),
    MidTermRegion(region: '서울·인천·경기도', city: '백령도', regId: '11A00101'),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '부산',
      regId: '11H20201',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '울산',
      regId: '11H20101',
      isCommunicated: true,
    ),
    MidTermRegion(region: '부산.울산.경상남도', city: '김해', regId: '11H20304'),
    MidTermRegion(region: '부산.울산.경상남도', city: '양산', regId: '11H20102'),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '창원',
      regId: '11H20301',
      isCommunicated: true,
    ),
    MidTermRegion(region: '부산.울산.경상남도', city: '밀양', regId: '11H20601'),
    MidTermRegion(region: '부산.울산.경상남도', city: '함안', regId: '11H20603'),
    MidTermRegion(region: '부산.울산.경상남도', city: '창녕', regId: '11H20604'),
    MidTermRegion(region: '부산.울산.경상남도', city: '의령', regId: '11H20602'),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '진주',
      regId: '11H20701',
      isCommunicated: true,
    ),
    MidTermRegion(region: '부산.울산.경상남도', city: '하동', regId: '11H20704'),
    MidTermRegion(region: '부산.울산.경상남도', city: '사천', regId: '11H20402'),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '거창',
      regId: '11H20502',
      isCommunicated: true,
    ),
    MidTermRegion(region: '부산.울산.경상남도', city: '합천', regId: '11H20503'),
    MidTermRegion(region: '부산.울산.경상남도', city: '산청', regId: '11H20703'),
    MidTermRegion(region: '부산.울산.경상남도', city: '함양', regId: '11H20501'),
    MidTermRegion(
      region: '부산.울산.경상남도',
      city: '통영',
      regId: '11H20401',
      isCommunicated: true,
    ),
    MidTermRegion(region: '부산.울산.경상남도', city: '거제', regId: '11H20403'),
    MidTermRegion(region: '부산.울산.경상남도', city: '고성', regId: '11H20404'),
    MidTermRegion(region: '부산.울산.경상남도', city: '남해', regId: '11H20405'),
    MidTermRegion(
      region: '대구.경상북도',
      city: '대구',
      regId: '11H10701',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대구.경상북도', city: '영천', regId: '11H10702'),
    MidTermRegion(region: '대구.경상북도', city: '경산', regId: '11H10703'),
    MidTermRegion(region: '대구.경상북도', city: '청도', regId: '11H10704'),
    MidTermRegion(region: '대구.경상북도', city: '칠곡', regId: '11H10705'),
    MidTermRegion(region: '대구.경상북도', city: '김천', regId: '11H10601'),
    MidTermRegion(region: '대구.경상북도', city: '구미', regId: '11H10602'),
    MidTermRegion(region: '대구.경상북도', city: '군위', regId: '11H10603'),
    MidTermRegion(region: '대구.경상북도', city: '고령', regId: '11H10604'),
    MidTermRegion(region: '대구.경상북도', city: '성주', regId: '11H10605'),
    MidTermRegion(
      region: '대구.경상북도',
      city: '안동',
      regId: '11H10501',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대구.경상북도', city: '의성', regId: '11H10502'),
    MidTermRegion(region: '대구.경상북도', city: '청송', regId: '11H10503'),
    MidTermRegion(region: '대구.경상북도', city: '상주', regId: '11H10302'),
    MidTermRegion(region: '대구.경상북도', city: '문경', regId: '11H10301'),
    MidTermRegion(region: '대구.경상북도', city: '예천', regId: '11H10303'),
    MidTermRegion(region: '대구.경상북도', city: '영주', regId: '11H10401'),
    MidTermRegion(region: '대구.경상북도', city: '봉화', regId: '11H10402'),
    MidTermRegion(region: '대구.경상북도', city: '영양', regId: '11H10403'),
    MidTermRegion(
      region: '대구.경상북도',
      city: '울진',
      regId: '11H10101',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대구.경상북도', city: '영덕', regId: '11H10102'),
    MidTermRegion(
      region: '대구.경상북도',
      city: '포항',
      regId: '11H10201',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '대구.경상북도',
      city: '경주',
      regId: '11H10202',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '대구.경상북도',
      city: '울릉도',
      regId: '11E00101',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대구.경상북도', city: '독도', regId: '11E00102'),
    MidTermRegion(
      region: '광주.전라남도',
      city: '광주',
      regId: '11F20501',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '광주.전라남도',
      city: '나주',
      regId: '11F20503',
      isCommunicated: true,
    ),
    MidTermRegion(region: '광주.전라남도', city: '장성', regId: '11F20502'),
    MidTermRegion(region: '광주.전라남도', city: '담양', regId: '11F20504'),
    MidTermRegion(region: '광주.전라남도', city: '화순', regId: '11F20505'),
    MidTermRegion(region: '광주.전라남도', city: '영광', regId: '21F20102'),
    MidTermRegion(region: '광주.전라남도', city: '함평', regId: '21F20101'),
    MidTermRegion(
      region: '광주.전라남도',
      city: '목포',
      regId: '21F20801',
      isCommunicated: true,
    ),
    MidTermRegion(region: '광주.전라남도', city: '무안', regId: '21F20804'),
    MidTermRegion(region: '광주.전라남도', city: '영암', regId: '21F20802'),
    MidTermRegion(region: '광주.전라남도', city: '진도', regId: '21F20201'),
    MidTermRegion(region: '광주.전라남도', city: '신안', regId: '21F20803'),
    MidTermRegion(region: '광주.전라남도', city: '흑산도', regId: '11F20701'),
    MidTermRegion(
      region: '광주.전라남도',
      city: '순천',
      regId: '11F20603',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '광주.전라남도',
      city: '광양',
      regId: '11F20402',
      isCommunicated: true,
    ),
    MidTermRegion(region: '광주.전라남도', city: '구례', regId: '11F20601'),
    MidTermRegion(region: '광주.전라남도', city: '곡성', regId: '11F20602'),
    MidTermRegion(region: '광주.전라남도', city: '완도', regId: '11F20301'),
    MidTermRegion(region: '광주.전라남도', city: '강진', regId: '11F20303'),
    MidTermRegion(region: '광주.전라남도', city: '장흥', regId: '11F20304'),
    MidTermRegion(region: '광주.전라남도', city: '해남', regId: '11F20302'),
    MidTermRegion(
      region: '광주.전라남도',
      city: '여수',
      regId: '11F20401',
      isCommunicated: true,
    ),
    MidTermRegion(region: '광주.전라남도', city: '고흥', regId: '11F20403'),
    MidTermRegion(region: '광주.전라남도', city: '보성', regId: '11F20404'),
    MidTermRegion(
      region: '전라북도',
      city: '전주',
      regId: '11F10201',
      isCommunicated: true,
    ),
    MidTermRegion(region: '전라북도', city: '익산', regId: '11F10202'),
    MidTermRegion(
      region: '전라북도',
      city: '군산',
      regId: '21F10501',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '전라북도',
      city: '정읍',
      regId: '11F10203',
      isCommunicated: true,
    ),
    MidTermRegion(region: '전라북도', city: '김제', regId: '21F10502'),
    MidTermRegion(
      region: '전라북도',
      city: '남원',
      regId: '11F10401',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '전라북도',
      city: '고창',
      regId: '21F10601',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '전라북도',
      city: '무주',
      regId: '11F10302',
      isCommunicated: true,
    ),
    MidTermRegion(region: '전라북도', city: '부안', regId: '21F10602'),
    MidTermRegion(region: '전라북도', city: '순창', regId: '11F10403'),
    MidTermRegion(region: '전라북도', city: '완주', regId: '11F10204'),
    MidTermRegion(region: '전라북도', city: '임실', regId: '11F10402'),
    MidTermRegion(region: '전라북도', city: '장수', regId: '11F10301'),
    MidTermRegion(region: '전라북도', city: '진안', regId: '11F10303'),
    MidTermRegion(
      region: '대전.세종.충청남도',
      city: '대전',
      regId: '11C20401',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '대전.세종.충청남도',
      city: '세종',
      regId: '11C20404',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대전.세종.충청남도', city: '공주', regId: '11C20402'),
    MidTermRegion(region: '대전.세종.충청남도', city: '논산', regId: '11C20602'),
    MidTermRegion(region: '대전.세종.충청남도', city: '계룡', regId: '11C20403'),
    MidTermRegion(region: '대전.세종.충청남도', city: '금산', regId: '11C20601'),
    MidTermRegion(region: '대전.세종.충청남도', city: '천안', regId: '11C20301'),
    MidTermRegion(region: '대전.세종.충청남도', city: '아산', regId: '11C20302'),
    MidTermRegion(region: '대전.세종.충청남도', city: '예산', regId: '11C20303'),
    MidTermRegion(region: '대전.세종.충청남도', city: '서산', regId: '11C20101'),
    MidTermRegion(region: '대전.세종.충청남도', city: '태안', regId: '11C20102'),
    MidTermRegion(region: '대전.세종.충청남도', city: '당진', regId: '11C20103'),
    MidTermRegion(
      region: '대전.세종.충청남도',
      city: '홍성',
      regId: '11C20104',
      isCommunicated: true,
    ),
    MidTermRegion(region: '대전.세종.충청남도', city: '보령', regId: '11C20201'),
    MidTermRegion(region: '대전.세종.충청남도', city: '서천', regId: '11C20202'),
    MidTermRegion(region: '대전.세종.충청남도', city: '청양', regId: '11C20502'),
    MidTermRegion(region: '대전.세종.충청남도', city: '부여', regId: '11C20501'),
    MidTermRegion(
      region: '충청북도',
      city: '청주',
      regId: '11C10301',
      isCommunicated: true,
    ),
    MidTermRegion(region: '충청북도', city: '증평', regId: '11C10304'),
    MidTermRegion(region: '충청북도', city: '괴산', regId: '11C10303'),
    MidTermRegion(region: '충청북도', city: '진천', regId: '11C10102'),
    MidTermRegion(
      region: '충청북도',
      city: '충주',
      regId: '11C10101',
      isCommunicated: true,
    ),
    MidTermRegion(region: '충청북도', city: '음성', regId: '11C10103'),
    MidTermRegion(region: '충청북도', city: '제천', regId: '11C10201'),
    MidTermRegion(region: '충청북도', city: '단양', regId: '11C10202'),
    MidTermRegion(region: '충청북도', city: '보은', regId: '11C10302'),
    MidTermRegion(region: '충청북도', city: '옥천', regId: '11C10403'),
    MidTermRegion(
      region: '충청북도',
      city: '영동',
      regId: '11C10402',
      isCommunicated: true,
    ),
    MidTermRegion(region: '충청북도', city: '추풍령', regId: '11C10401'),
    MidTermRegion(region: '강원도', city: '철원', regId: '11D10101'),
    MidTermRegion(region: '강원도', city: '화천', regId: '11D10102'),
    MidTermRegion(region: '강원도', city: '인제', regId: '11D10201'),
    MidTermRegion(region: '강원도', city: '양구', regId: '11D10202'),
    MidTermRegion(
      region: '강원도',
      city: '춘천',
      regId: '11D10301',
      isCommunicated: true,
    ),
    MidTermRegion(region: '강원도', city: '홍천', regId: '11D10302'),
    MidTermRegion(
      region: '강원도',
      city: '원주',
      regId: '11D10401',
      isCommunicated: true,
    ),
    MidTermRegion(region: '강원도', city: '횡성', regId: '11D10402'),
    MidTermRegion(region: '강원도', city: '영월', regId: '11D10501'),
    MidTermRegion(region: '강원도', city: '정선', regId: '11D10502'),
    MidTermRegion(region: '강원도', city: '평창', regId: '11D10503'),
    MidTermRegion(region: '강원도', city: '대관령', regId: '11D20201'),
    MidTermRegion(region: '강원도', city: '속초', regId: '11D20401'),
    MidTermRegion(region: '강원도', city: '고성', regId: '11D20402'),
    MidTermRegion(region: '강원도', city: '양양', regId: '11D20403'),
    MidTermRegion(
      region: '강원도',
      city: '강릉',
      regId: '11D20501',
      isCommunicated: true,
    ),
    MidTermRegion(region: '강원도', city: '동해', regId: '11D20601'),
    MidTermRegion(region: '강원도', city: '삼척', regId: '11D20602'),
    MidTermRegion(region: '강원도', city: '태백', regId: '11D20301'),
    MidTermRegion(
      region: '제주도',
      city: '제주',
      regId: '11G00201',
      isCommunicated: true,
    ),
    MidTermRegion(
      region: '제주도',
      city: '서귀포',
      regId: '11G00401',
      isCommunicated: true,
    ),
    MidTermRegion(region: '제주도', city: '성산', regId: '11G00101'),
    MidTermRegion(region: '제주도', city: '고산', regId: '11G00501'),
    MidTermRegion(region: '제주도', city: '성판악', regId: '11G00302'),
    MidTermRegion(region: '제주도', city: '이어도', regId: '11G00601'),
    MidTermRegion(region: '제주도', city: '추자도', regId: '11G00800'),
  ];

  // 도시명으로 regId를 찾는 헬퍼 함수
  static String? getRegIdByCityName(String cityName) {
    try {
      final regionData = detailedMidTermRegion.firstWhere(
        (data) => data.city == cityName,
      );
      return regionData.regId;
    } catch (e) {
      return null;
    }
  }

  static String? getRegionNameFromRegId(String regId) {
    try {
      final regionData = detailedMidTermRegion.firstWhere(
        (data) => data.regId == regId,
      );
      // 가장 상세한 이름을 반환 (보통 city 이름이 될 것임)
      // 만약 city 이름이 없으면 region 이름을 반환
      return regionData.city.isNotEmpty ? regionData.city : regionData.region;
    } catch (e) {
      // 해당 regId를 찾을 수 없는 경우 null 반환
      appLogger.w('RegId $regId 에 해당하는 지역 이름을 찾을 수 없습니다: $e');
      return null;
    }
  }

  // 상세 RegId를 통해 광역 중기 육상 예보 RegId를 찾는 헬퍼 함수
  static String getBroadAreaRegIdForLandForecast(String detailedRegId) {
    // 상세 RegId에 해당하는 MidTermRegion 객체를 찾음
    final targetData = detailedMidTermRegion.firstWhere(
      (data) => data.regId == detailedRegId,
      orElse: () {
        appLogger.w('상세 RegId $detailedRegId 에 해당하는 지역 데이터를 찾을 수 없습니다.');
        // 찾지 못하면 일단 상세 RegId를 그대로 반환하거나, 에러 처리
        // API가 올바른 광역 RegId를 요구하므로 이 경우는 실제 오류로 이어질 수 있음.
        // 여기서는 임시로 throw Exception 처리
        throw Exception(
          '상세 RegId ($detailedRegId)에 매핑되는 광역 육상 예보 지역 코드를 찾을 수 없습니다.',
        );
      },
    );

    // MidTermRegion의 'region' 필드를 기반으로 MidTermLandForecastRegion enum에서 광역 regId를 찾음
    switch (targetData.region) {
      case '서울·인천·경기도':
        return MidTermLandForecastRegion.seoulIncheonGyeonggi.regionCode;
      case '강원도': // 강원도는 영서/영동으로 나뉘지만, 육상 예보에서 '강원도'라는 광역 단위를 사용한다면
        // 둘 중 하나를 대표로 쓰거나 API 문서에 따른 적절한 광역 코드를 사용해야 합니다.
        // 중기 육상 예보의 '강원도영서' (11D10000) '강원도영동' (11D20000)처럼 나뉘어 있다면
        // 상세 도시의 regId 앞부분(11D10XXX)을 보고 영서인지 영동인지 판단하여 매핑
        if (detailedRegId.startsWith('11D1'))
          return MidTermLandForecastRegion.gangwonYeongseo.regionCode;
        if (detailedRegId.startsWith('11D2'))
          return MidTermLandForecastRegion.gangwonYeongdong.regionCode;
        // 예외 처리
        appLogger.w('상세 RegId $detailedRegId 에 대한 정확한 강원도 광역 RegId 매핑 실패.');
        return MidTermLandForecastRegion.gangwonYeongseo.regionCode; // 혹은 에러
      case '충청북도':
        return MidTermLandForecastRegion.chungcheongbuk.regionCode;
      case '대전.세종.충청남도':
        return MidTermLandForecastRegion.daejeonSejongChungcheongnam.regionCode;
      case '전라북도':
        return MidTermLandForecastRegion.jeollabuk.regionCode;
      case '광주.전라남도':
        return MidTermLandForecastRegion.gwangjuJeollanam.regionCode;
      case '대구.경상북도':
        return MidTermLandForecastRegion.daeguGyeongsangbuk.regionCode;
      case '부산.울산.경상남도':
        return MidTermLandForecastRegion.busanUlsanGyeongsangnam.regionCode;
      case '제주도':
        return MidTermLandForecastRegion.jeju.regionCode;
      default:
        appLogger.e(
          'RegId $detailedRegId 에 대한 광역 육상 예보 RegId를 매핑할 수 없습니다. ${targetData.region}',
        );
        throw Exception(
          '해당 상세 RegId($detailedRegId)에 대한 광역 육상 예보 지역 코드를 찾을 수 없습니다.',
        );
    }
  }
}
