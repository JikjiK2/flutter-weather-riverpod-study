import 'dart:math';

class WeatherCalculator {

  static double calculateFeelsLike({
    required double temp,
    required int humidity,
    required double windSpeedMs,
    required DateTime date,
  }) {
    double feelsLike;
    if (isSummerSeason(date)) {
      feelsLike = calculateSummerFeelsLikeTemperature(temp, humidity);
    } else {
      feelsLike = calculateWinterFeelsLikeTemperature(temp, windSpeedMs);
    }
    // 소수점 첫째 자리까지 반올림
    return double.parse(feelsLike.toStringAsFixed(1));
  }

  /// 계절 구분 함수
  /// 여름철 (5월 ~ 9월)
  /// 겨울철 (10월 ~ 익년 4월)
  static bool isSummerSeason(DateTime date) {
    return date.month >= 5 && date.month <= 9;
  }

  /// Stull의 습구온도 추정식 (Tw)
  /// Tw = Ta + ATAN[0.151977(RH+8.313659)^0.5] + ATAN(Ta+RH) - ATAN(RH-1.67633) + 0.00391838*RH^1.5*ATAN(0.023101*RH) - 4.686035
  /// Ta: 기온(°C), RH: 상대습도(%)
  static double _calculateWetBulbTemperature(double ta, int rh) {
    // ATAN 함수는 라디안 값을 반환합니다. 수식 자체에 이미 ATAN이 있으므로 그대로 사용합니다.
    // pow 함수는 double을 반환하므로 주의하여 사용합니다.

    final double rhDouble = rh.toDouble();

    final term1 = 0.151977 * pow(rhDouble + 8.313659, 0.5);
    final term2 = (ta + rhDouble);
    final term3 = (rhDouble - 1.67633);
    final term4 = 0.00391838 * pow(rhDouble, 1.5) * atan(0.023101 * rhDouble);

    final tw = ta + atan(term1) + atan(term2) - atan(term3) + term4 - 4.686035;

    // 만약 계산된 습구온도가 기온보다 높을 수는 없습니다.
    return tw > ta ? ta : tw; // Tw는 Ta를 넘을 수 없음
  }

  /// 여름철 체감온도 산출식 (5~9월)
  /// 조건: 없음 (일 최고 체감온도 제공)
  /// 체감온도 = -0.2442 + 0.55399Tw + 0.45535Ta – 0.0022Tw2 + 0.00278TwTa + 3.0
  /// Ta: 기온(°C), Tw: 습구온도, RH: 상대습도(%)
  static double calculateSummerFeelsLikeTemperature(double ta, int rh) {
    final tw = _calculateWetBulbTemperature(ta, rh);

    final feelsLike =
        -0.2442 +
        (0.55399 * tw) +
        (0.45535 * ta) -
        (0.0022 * pow(tw, 2)) +
        (0.00278 * tw * ta) +
        3.0;

    // 계산된 체감온도가 실제 기온보다 너무 낮거나 높게 나오지 않도록 상한/하한 적용 (선택 사항)
    // 일반적으로 너무 낮은 체감온도는 0, 너무 높은 체감온도는 50 정도로 제한하기도 합니다.
    // 여기서는 수식에 따른 값을 그대로 반환합니다.
    return feelsLike;
  }

  /// 겨울철 체감온도 산출식 (10~익년 4월)
  /// 조건: 기온 10°C 이하, 풍속 1.3 m/s 이상일 때만 산출. (일 최저 체감온도 제공)
  /// 체감온도 = 13.12 + 0.6215Ta - 11.37 V0.16 + 0.3965 V0.16Ta
  /// Ta: 기온(°C), V: 10분 평균 풍속(km/h)
  /// WindSpeed (m/s)를 V (km/h)로 변환: V(km/h) = WindSpeed(m/s) * 3.6
  static double calculateWinterFeelsLikeTemperature(
    double ta,
    double windSpeedMs,
  ) {
    // 산출 조건 확인
    if (ta > 10.0 || windSpeedMs < 1.3) {
      return ta; // 조건에 맞지 않으면 실제 기온 반환 혹은 null 등 다른 값 고려
    }

    // 풍속 단위를 m/s -> km/h로 변환
    final double vKmh = windSpeedMs * 3.6;

    final feelsLike =
        13.12 +
        (0.6215 * ta) -
        (11.37 * pow(vKmh, 0.16)) +
        (0.3965 * pow(vKmh, 0.16) * ta);

    return feelsLike;
  }
}
