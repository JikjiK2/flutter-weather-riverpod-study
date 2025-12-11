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
      return '무풍'; // 바람이 없을 때
    }

    // atan2(y, x) -> atan2(VVV, UUU)는 X축 양의 방향(동쪽)을 0도로 반시계 방향 각도 반환
    // Dart의 atan2는 y, x 순서. 반환값은 -π ~ +π 라디안
    double angleRad = atan2(uuu, vvv); // Y가 UUU (동서), X가 VVV (남북)

    // 라디안을 도로 변환: rad * (180 / pi)
    double angleDeg = angleRad * (180 / pi);

    // 기상청 풍향 각도로 변환: 북쪽(Y+)이 0도, 시계방향.
    // atan2(y,x)가 X+를 0도로 반시계 방향이므로, 북쪽 0도 시계방향으로 바꾸기 위해 조정
    // atan2(uuu, vvv)는 UUU를 y로, VVV를 x로 사용하여 수학적 평면의 각도를 얻는다.
    // 즉, VVV가 +일 때 위로, UUU가 +일 때 오른쪽으로 향하는 벡터의 각도.
    //
    // 기상청의 풍향: 북(0), 동(90), 남(180), 서(270)
    // 수학적 atan2(x,y)의 0도는 (x=1,y=0)이다. UUU, VVV의 축 방향과 일치하지 않는다.
    //
    // 올바른 변환: atan2(동서성분, 남북성분)은 동쪽을 0도 기준 반시계방향이다.
    // 기상청은 북쪽을 0도 기준 시계방향이므로:
    // 기상청 풍향 = (90 - 수학적 각도 + 360) % 360
    //
    // 또는, 북쪽을 0도로 하는 vector를 가정:
    // angleRad = atan2(-uuu, -vvv); // 바람이 불어'오는' 방향 기준
    // angleDeg = angleRad * 180 / pi;
    // double finalAngle = (angleDeg + 360) % 360;

    // KMA API의 VEC (풍향) 값은 "북쪽 0도로 시계 방향"으로 간주합니다.
    // UUU, VVV가 동(+)서(-), 북(+)남(-) 이라면
    // Vector (uuu, vvv). atan2(vvv, uuu)는 X축에서부터 각도.
    // 기상청 풍향(VEC)은 북(0), 동(90), 남(180), 서(270)
    // UUU (+는 동, -는 서), VVV (+는 북, -는 남)

    // Example: (U,V) = (2.9, -0.8) => 남동쪽에서 불어오는 바람. 각도는 150~180 근처
    // UUU(x), VVV(y) 성분으로 벡터를 그릴 때
    // 풍향은 바람이 불어 '오는' 방향.
    // 각도 = atan2(바람 성분 y, 바람 성분 x)
    // 수학적 각도: atan2(V, U) -> Y(V), X(U)
    // 기상청 VEC (북=0, 시계 방향)와 일치시키기: (270 - angle) % 360 또는 (90 + angle) % 360
    // https://www.researchgate.net/post/Wind_direction_from_U_and_V_components
    // https://stackoverflow.com/questions/21570773/wind-direction-from-u-v-components-matlab

    // U,V 벡터 성분을 통한 각도 계산 (0-360, 북 0도, 시계 방향)
    // KMA는 일반적으로 북쪽을 0도로 하고 시계방향으로 셉니다. (정확히는 VEC 코드가 0~15 이므로 16분위 방향입니다)
    // 여기서 atan2(-U, -V)는 바람이 불어 "오는" 방향을 기준으로 한 각도입니다.
    double windDirectionInDegrees = (atan2(-uuu, -vvv) * 180 / pi + 360) % 360;

    // 이 각도를 이용하여 기존의 getWindDirectionText 함수를 호출합니다.
    return getWindDirectionText(
      windDirectionInDegrees.round(),
    ); // 각도를 반올림하여 int로 전달
  }
}
