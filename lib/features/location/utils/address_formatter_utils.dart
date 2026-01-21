import 'package:ai_weather/features/location/domain/entities/address_entity.dart';

class AddressFormatterUtils {
  // 내부 헬퍼 함수: 지역명에서 불필요한 접미사를 제거
  static String _cleanRegionSuffixes(String name) {
    return name
        .replaceAll('특별시', '')
        .replaceAll('광역시', '')
        .replaceAll('특별자치시', '')
        .replaceAll('특별자치도', '')
        .replaceAll('도', '') // '경기도' -> '경기' (여기서는 제거하지 않고 따로 매핑)
        .replaceAll('시', '') // '파주시' -> '파주'
        .replaceAll('군', '')
        .replaceAll('구', '')
        .trim();
  }

  /// KMA API용 지역명을 Address 모델에서 추출합니다.
  /// - 서울특별시 중구 -> '서울'
  /// - 경기도 파주시 -> '파주'
  /// - 제주특별자치도 제주시 -> '제주' (제주도는 특별 케이스)
  static String? extractKmaRegionName(Address address) {
    String? resultRegionName;

    final adminLevel1 = address.administrativeArea; // '서울특별시', '경기도', '제주특별자치도'
    final locality = address.locality; // '제주시', '파주시', '수원시'
    final sublocalityLevel1 = address.subLocality; // '중구', '용산구' (주로 광역시 내부)

    // 1. 광역시/특별시/세종특별자치시의 경우, 최상위 지역명 (cleaned) 사용
    const List<String> majorCitiesAdmin1 = [
      '서울특별시',
      '부산광역시',
      '대구광역시',
      '인천광역시',
      '광주광역시',
      '대전광역시',
      '울산광역시',
      '세종특별자치시',
    ];

    if (adminLevel1 != null && majorCitiesAdmin1.contains(adminLevel1)) {
      resultRegionName = _cleanRegionSuffixes(adminLevel1); // '서울특별시' -> '서울'
    } else if (adminLevel1 == '제주특별자치도') {
      resultRegionName = '제주';
    }

    // 2. '도'에 속한 지역이거나, majorCitiesAdmin1에 속하지 않는 경우 'locality'(시/군) 사용
    //    이전 단계에서 resultRegionName이 확정되지 않았을 경우 (주로 경기도, 강원도 등)
    if (resultRegionName == null && locality != null) {
      resultRegionName = _cleanRegionSuffixes(
        locality,
      ); // '파주시' -> '파주', '수원시' -> '수원'
    }

    // KMA regId 매핑을 위해 특정 도(道)는 단축명 사용
    // ex: 경기도, 강원도 등... (regId 맵핑 테이블에 맞춰 조정)
    if (resultRegionName != null) {
      // 예를 들어 '경기' 로 통칭해야 하는 경우
      if (adminLevel1 == '경기도' &&
          (locality != null || sublocalityLevel1 != null)) {}
    }

    return resultRegionName;
  }
}
