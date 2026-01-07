import 'package:flutter/material.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

class WeatherIconHelper {
  /// 모든 섹션 공통 아이콘 반환 함수
  static IconData getIcon({
    required SkyStatus sky,
    required PrecipitationType pty,
    required int hour,
  }) {
    // 1. 강수 형태(pty) 최우선 체크
    if (pty != PrecipitationType.none) {
      switch (pty) {
        case PrecipitationType.rain:
          return Icons.umbrella;
        case PrecipitationType.snow:
          return Icons.ac_unit;
        case PrecipitationType.rainSnow:
          return Icons.cloudy_snowing;
        case PrecipitationType.shower:
          return Icons.thunderstorm;
        default:
          return Icons.umbrella;
      }
    }

    // 2. 강수 없을 때 하늘 상태 및 밤낮 구분
    final isNight = hour >= 18 || hour < 6;
    switch (sky) {
      case SkyStatus.none:
        return Icons.gps_fixed;
      case SkyStatus.sunny:
        return isNight ? Icons.nightlight_round : Icons.wb_sunny;
      case SkyStatus.partlyCloudy:
        return isNight ? Icons.nightlight_round : Icons.wb_cloudy_outlined;
      case SkyStatus.cloudy:
        return Icons.cloud;
    }
  }

  /// 모든 섹션 공통 색상 반환 함수
  static Color getColor({
    required SkyStatus sky,
    required PrecipitationType pty,
    required int hour,
  }) {
    if (pty != PrecipitationType.none) return Colors.blueAccent;

    final isNight = hour >= 18 || hour < 6;
    switch (sky) {
      case SkyStatus.none:
        return Colors.black;
      case SkyStatus.sunny:
        return isNight ? Colors.amberAccent : Color(0xffffcd27);
      case SkyStatus.partlyCloudy:
        return isNight ? Colors.blueGrey[200]! : Colors.blueGrey;
      case SkyStatus.cloudy:
        return Colors.grey;
    }
  }
}
