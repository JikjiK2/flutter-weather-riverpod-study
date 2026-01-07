import 'dart:math';

class GetFeelsLikeTemperatureUseCase {
  double execute({
    required double ta, // 기온 (°C)
    required int rh, // 상대습도 (%)
    required double windSpeedMs, // 풍속 (m/s)
    required DateTime date, // 현재 날짜 (계절 판단용)
  }) {
    double feelsLike;

    if (_isSummerSeason(date)) {
      // 여름철 공식 (습구온도 기반)
      feelsLike = _calculateSummerFeelsLikeTemperature(ta, rh);
    } else {
      // 겨울철 공식 (풍속 기반)
      feelsLike = _calculateWinterFeelsLikeTemperature(ta, windSpeedMs);
    }
    return double.parse(feelsLike.toStringAsFixed(1));
  }

  /// 계절 구분 로직: 여름철 (5월 ~ 9월), 겨울철 (10월 ~ 익년 4월)
  bool _isSummerSeason(DateTime date) {
    return date.month >= 5 && date.month <= 9;
  }

  /// Stull의 습구온도 추정식 (Tw)
  double _calculateWetBulbTemperature(double ta, int rh) {
    final double rhDouble = rh.toDouble();

    final term1 = 0.151977 * pow(rhDouble + 8.313659, 0.5);
    final term2 = (ta + rhDouble);
    final term3 = (rhDouble - 1.67633);
    final term4 = 0.00391838 * pow(rhDouble, 1.5) * atan(0.023101 * rhDouble);

    final tw = ta + atan(term1) + atan(term2) - atan(term3) + term4 - 4.686035;

    // 계산된 습구온도가 기온을 초과할 수 없으므로, Ta보다 크면 Ta 반환
    return tw > ta ? ta : tw;
  }

  /// 여름철 체감온도 산출식 (5~9월)
  double _calculateSummerFeelsLikeTemperature(double ta, int rh) {
    final tw = _calculateWetBulbTemperature(ta, rh);

    final feelsLike =
        -0.2442 +
        (0.55399 * tw) +
        (0.45535 * ta) -
        (0.0022 * pow(tw, 2)) +
        (0.00278 * tw * ta) +
        3.0;

    return feelsLike;
  }

  /// 겨울철 체감온도 산출식 (10~익년 4월)
  double _calculateWinterFeelsLikeTemperature(double ta, double windSpeedMs) {
    // [조건]: 기온 10°C 이하, 풍속 1.3 m/s 이상일 때만 산출
    if (ta > 10.0 || windSpeedMs < 1.3) {
      return ta; // 조건에 맞지 않으면 실제 기온(Ta) 반환
    }

    // 풍속 단위를 m/s -> km/h로 변환 (V: 10분 평균 풍속(km/h))
    final double vKmh = windSpeedMs * 3.6;

    final feelsLike =
        13.12 +
        (0.6215 * ta) -
        (11.37 * pow(vKmh, 0.16)) +
        (0.3965 * pow(vKmh, 0.16) * ta);

    return feelsLike;
  }
}
