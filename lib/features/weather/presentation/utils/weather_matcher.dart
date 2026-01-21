import 'package:flutter/material.dart';

class MidTermWeatherMatcher {
  static IconData getIcon(String weatherText) {
    // 1. 강수 조건 우선 체크 (우선순위: 비/눈 > 비 > 눈 > 소나기)
    if (weatherText.contains('비/눈')) return Icons.cloudy_snowing;
    if (weatherText.contains('비')) return Icons.umbrella;
    if (weatherText.contains('눈')) return Icons.ac_unit;
    if (weatherText.contains('소나기')) return Icons.thunderstorm;

    // 2. 하늘 상태 체크
    if (weatherText.contains('맑음')) return Icons.wb_sunny;
    if (weatherText.contains('구름많고')) return Icons.wb_cloudy_outlined;
    if (weatherText.contains('흐림')) return Icons.cloud;

    // 3. 기본값
    return Icons.wb_cloudy;
  }

  static Color getColor(String weatherText) {
    if (weatherText.contains('비') ||
        weatherText.contains('눈') ||
        weatherText.contains('소나기')) {
      return Colors.blueAccent;
    }
    if (weatherText.contains('맑음')) return Colors.orange;
    if (weatherText.contains('구름')) return Colors.blueGrey;
    if (weatherText.contains('흐림')) return Colors.grey;

    return Colors.black54;
  }
}
