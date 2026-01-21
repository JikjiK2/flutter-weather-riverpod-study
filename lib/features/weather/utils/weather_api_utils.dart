import 'package:ai_weather/features/weather/domain/entities/mid_term_region_entity.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/core/logger/app_logger_interface.dart';
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
  static (String baseDate, String baseTime) getOptimalBaseTimeForDailyTMN_TMX(
    DateTime targetDate,
    DateTime currentQueryTime,
  ) {
    String baseDateStr = formatDateToYYYYMMDD(targetDate);
    String baseTimeStr = '0200';

    if (targetDate.year == currentQueryTime.year &&
        targetDate.month == currentQueryTime.month &&
        targetDate.day == currentQueryTime.day &&
        currentQueryTime.hour < 2) {
      final prevDay = targetDate.subtract(const Duration(days: 1));
      baseDateStr = formatDateToYYYYMMDD(prevDay);
      baseTimeStr = '2300';
    }

    return (baseDateStr, baseTimeStr);
  }

  static (String, String) getShortTermForecastBaseTime(DateTime now) {
    DateTime targetTime = now.subtract(const Duration(minutes: 10));

    int currentHour = targetTime.hour;
    int currentMinute = targetTime.minute;

    String baseDate = DateFormat('yyyyMMdd').format(targetTime);
    int baseHour = shortTermForecastBaseTimes.last;

    for (int i = shortTermForecastBaseTimes.length - 1; i >= 0; i--) {
      int apiBaseHour = shortTermForecastBaseTimes[i];
      if (currentHour > apiBaseHour ||
          (currentHour == apiBaseHour && currentMinute >= 0)) {
        baseHour = apiBaseHour;
        break;
      }
      if (i == 0 && currentHour < apiBaseHour) {
        baseHour = shortTermForecastBaseTimes.last;
        baseDate = DateFormat(
          'yyyyMMdd',
        ).format(targetTime.subtract(const Duration(days: 1)));
        break;
      }
    }

    String baseTimeString = '${baseHour.toString().padLeft(2, '0')}00';
    return (baseDate, baseTimeString);
  }

  static (String, String) getUltraSrtNcstBaseTime(DateTime now) {
    DateTime targetTime = now.subtract(const Duration(minutes: 10));

    DateTime baseDateTime = DateTime(
      targetTime.year,
      targetTime.month,
      targetTime.day,
      targetTime.hour,
      0,
    );

    String baseDate = DateFormat('yyyyMMdd').format(baseDateTime);
    String baseTime = DateFormat('HHmm').format(baseDateTime);

    return (baseDate, baseTime);
  }

  static (String, String) getUltraSrtForecastBaseTime(DateTime now) {
    DateTime targetTime = now.subtract(const Duration(minutes: 15));

    int minute = 30;

    DateTime baseDateTime;
    if (targetTime.minute < minute) {
      baseDateTime = DateTime(
        targetTime.year,
        targetTime.month,
        targetTime.day,
        targetTime.hour - 1,
        minute,
      );
    } else {
      baseDateTime = DateTime(
        targetTime.year,
        targetTime.month,
        targetTime.day,
        targetTime.hour,
        minute,
      );
    }

    String baseDate = DateFormat('yyyyMMdd').format(baseDateTime);
    String baseTime = DateFormat('HHmm').format(baseDateTime);

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
        return SkyStatus.none;
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
        return PrecipitationType.none;
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
}

class MidTermApiUtils {
  static ({String baseDate, String baseTime}) getMidTermBaseTime(DateTime now) {
    String baseDate;
    String baseTime;

    if (now.hour >= 18) {
      baseDate =
          '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}';
      baseTime = '1800';
    } else if (now.hour >= 6) {
      baseDate =
          '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}';
      baseTime = '0600';
    } else {
      final yesterday = now.subtract(const Duration(days: 1));
      baseDate =
          '${yesterday.year}${yesterday.month.toString().padLeft(2, '0')}${yesterday.day.toString().padLeft(2, '0')}';
      baseTime = '1800';
    }

    return (baseDate: baseDate, baseTime: baseTime);
  }

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

  static String? getRegionNameFromRegId(String regId, [IAppLogger? logger]) {
    try {
      final regionData = detailedMidTermRegion.firstWhere(
        (data) => data.regId == regId,
      );
      return regionData.city.isNotEmpty ? regionData.city : regionData.region;
    } catch (e) {
      logger?.w('RegId $regId 에 해당하는 지역 이름을 찾을 수 없습니다: $e');
      return null;
    }
  }

  static String getBroadAreaRegIdForLandForecast(
    String detailedRegId, [
    IAppLogger? logger,
  ]) {
    final targetData = detailedMidTermRegion.firstWhere(
      (data) => data.regId == detailedRegId,
      orElse: () {
        logger?.w('상세 RegId $detailedRegId 에 해당하는 지역 데이터를 찾을 수 없습니다.');
        throw Exception(
          '상세 RegId ($detailedRegId)에 매핑되는 광역 육상 예보 지역 코드를 찾을 수 없습니다.',
        );
      },
    );

    switch (targetData.region) {
      case '서울·인천·경기도':
        return MidTermLandForecastRegion.seoulIncheonGyeonggi.regionCode;
      case '강원도':
        if (detailedRegId.startsWith('11D1')) {
          return MidTermLandForecastRegion.gangwonYeongseo.regionCode;
        }
        if (detailedRegId.startsWith('11D2')) {
          return MidTermLandForecastRegion.gangwonYeongdong.regionCode;
        }
        logger?.w('상세 RegId $detailedRegId 에 대한 정확한 강원도 광역 RegId 매핑 실패.');
        return MidTermLandForecastRegion.gangwonYeongseo.regionCode;
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
        logger?.e(
          'RegId $detailedRegId 에 대한 광역 육상 예보 RegId를 매핑할 수 없습니다. ${targetData.region}',
        );
        throw Exception(
          '해당 상세 RegId($detailedRegId)에 대한 광역 육상 예보 지역 코드를 찾을 수 없습니다.',
        );
    }
  }
}
