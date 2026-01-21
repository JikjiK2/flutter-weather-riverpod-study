import 'package:flutter/material.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

class WeatherIconHelper {
  static IconData getIcon({
    required SkyStatus sky,
    required PrecipitationType pty,
    required int hour,
  }) {
    if (pty != PrecipitationType.none) {
      switch (pty) {
        case PrecipitationType.rain:
          return Icons.umbrella; // 비 (1)
        case PrecipitationType.rainSnow:
          return Icons.cloudy_snowing; // 비/눈 (2)
        case PrecipitationType.snow:
          return Icons.ac_unit; // 눈 (3)
        case PrecipitationType.shower:
          return Icons.thunderstorm; // 소나기 (4 - 단기 전용)
        case PrecipitationType.drizzle:
          return Icons.umbrella_outlined; // 빗방울 (5 - 초단기 전용)
        case PrecipitationType.drizzleSnow:
          return Icons.cloudy_snowing; // 빗방울눈날림 (6 - 초단기 전용)
        case PrecipitationType.snowFlurry:
          return Icons.ac_unit_outlined; // 눈날림 (7 - 초단기 전용)
        default:
          return Icons.umbrella;
      }
    }

    // 2. 강수 없을 때 하늘 상태(SKY) 및 밤낮 구분
    final isNight = hour >= 18 || hour < 6;
    switch (sky) {
      case SkyStatus.sunny:
        return isNight ? Icons.nightlight_round : Icons.wb_sunny; // 맑음 (1)
      case SkyStatus.partlyCloudy:
        return isNight ? Icons.nightlight_round : Icons.wb_cloudy_outlined; // 구름많음 (3)
      case SkyStatus.cloudy:
        return Icons.cloud; // 흐림 (4)
      case SkyStatus.none:
      default:
        return isNight ? Icons.nightlight_round : Icons.wb_sunny;
    }
  }

  static Color getColor({
    required SkyStatus sky,
    required PrecipitationType pty,
    required int hour,
  }) {
    // 강수 시 푸른색 계열 (소나기는 더 짙은 색)
    if (pty != PrecipitationType.none) {
      return pty == PrecipitationType.shower ? Colors.indigoAccent : Colors.blueAccent;
    }

    final isNight = hour >= 18 || hour < 6;
    switch (sky) {
      case SkyStatus.sunny:
        return isNight ? Colors.amberAccent : const Color(0xffffcd27);
      case SkyStatus.partlyCloudy:
        return isNight ? Colors.blueGrey[200]! : Colors.blueGrey;
      case SkyStatus.cloudy:
        return Colors.grey;
      case SkyStatus.none:
      default:
        return isNight ? Colors.amberAccent : const Color(0xffffcd27);
    }
  }
}