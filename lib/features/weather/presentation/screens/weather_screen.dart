import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWeatherList = ref.watch(hourlyWeatherListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Weather App')),
      body: Center(
        child: asyncWeatherList.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) {
            Text('오류 발생: ${error.toString()}');
            return null;
          },
          data: (weatherList) {
            if (weatherList.isEmpty) {
              return const Text('날씨 데이터가 없습니다.');
            }
            final currentHourWeather = weatherList.first;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('예보 시각: ${currentHourWeather.forecastDateTime.hour}시'),
                Text('기온: ${currentHourWeather.temperature}°C'),
                Text('하늘 상태: ${currentHourWeather.skyStatus.description}'),
                Text(
                  '강수 형태: ${currentHourWeather.precipitationType.description}',
                ),
                Text('습도: ${currentHourWeather.humidity}%'),
              ],
            );
          },
        ),
      ),
    );
  }
}
