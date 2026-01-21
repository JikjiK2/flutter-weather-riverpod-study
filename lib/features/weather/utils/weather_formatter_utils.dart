import 'dart:math';

class WeatherFormatterUtils {
  /// 풍향 (VEC) 값 (0~360도)을 주어진 각도 구간 기준 8방위 한글 텍스트로 변환합니다.
  /// 입력: vecAngle은 직접 각도(degree)입니다.
  static String getWindDirectionText(int vecAngle) {
    // 0부터 360도 범위를 벗어나는 경우 처리
    if (vecAngle < 0 || vecAngle > 360) {
      return '풍향 알 수 없음';
    }

    // 각도 구간에 따라 텍스트 반환
    // 0-45  : N-NE
    // 45-90 : NE-E
    // 90-135: E-SE
    // ...
    // 315-360: NW-N
    // 위 구간표를 8방위 표현으로 매핑 (예: N-NE는 북동풍으로, SE-S는 남동풍으로 간주)

    if (vecAngle >= 0 && vecAngle < 45) {
      // 0 - 45
      return '북동풍'; // N-NE 범위
    } else if (vecAngle >= 45 && vecAngle < 90) {
      // 45 - 90
      return '동풍'; // NE-E 범위
    } else if (vecAngle >= 90 && vecAngle < 135) {
      // 90 - 135
      return '남동풍'; // E-SE 범위
    } else if (vecAngle >= 135 && vecAngle < 180) {
      // 135 - 180
      return '남풍'; // SE-S 범위
    } else if (vecAngle >= 180 && vecAngle < 225) {
      // 180 - 225
      return '남서풍'; // S-SW 범위
    } else if (vecAngle >= 225 && vecAngle < 270) {
      // 225 - 270
      return '서풍'; // SW-W 범위
    } else if (vecAngle >= 270 && vecAngle < 315) {
      // 270 - 315
      return '북서풍'; // W-NW 범위
    } else if (vecAngle >= 315 && vecAngle <= 360) {
      // 315 - 360 (N-NW, 360은 0과 동일)
      return '북풍'; // NW-N 범위
    } else {
      return '풍향 알 수 없음';
    }
  }

  static String getWindDirectionTextFromUvv(double uuu, double vvv) {
    if (uuu == 0.0 && vvv == 0.0) {
      return '무풍';
    }
    double windDirectionInDegrees = (atan2(-uuu, -vvv) * 180 / pi + 360) % 360;

    // 이 각도를 이용하여 기존의 getWindDirectionText 함수를 호출합니다.
    return getWindDirectionText(
      windDirectionInDegrees.round(),
    ); // 각도를 반올림하여 int로 전달
  }
}
