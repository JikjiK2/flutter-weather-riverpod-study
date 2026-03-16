import 'package:flutter/material.dart';

class MidTermWeatherMatcher {
  static IconData getIcon(String weatherText) {
    if (weatherText.contains('비/눈')) return Icons.cloudy_snowing;
    if (weatherText.contains('비')) return Icons.umbrella;
    if (weatherText.contains('눈')) return Icons.ac_unit;
    if (weatherText.contains('소나기')) return Icons.thunderstorm;

    if (weatherText.contains('맑음')) return Icons.wb_sunny;
    if (weatherText.contains('구름많고')) return Icons.wb_cloudy_outlined;
    if (weatherText.contains('흐림')) return Icons.cloud;

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
