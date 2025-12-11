import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/utils/weather_enums.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  // 임시 좌표 (예: 서울 종로구)
  final String targetCity = '서울';
  final int tempNx = 60;
  final int tempNy = 127;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. 현재 날씨 실황 Provider 구독
    final currentWeatherAsync = ref.watch(
      currentWeatherProvider(nx: tempNx, ny: tempNy),
    );

    // 2. 초단기 시간별 예보 Provider 구독
    final hourlyForecastAsync = ref.watch(
      hourlyUltraSrtForecastProvider(nx: tempNx, ny: tempNy),
    );

    // 3. 단기 일별 예보 Provider 구독
    final dailyForecastAsync = ref.watch(
      dailyShortTermForecastProvider(nx: tempNx, ny: tempNy),
    );
    //  중기 통합 예보 Provider 구독
    final midTermWeatherAsync = ref.watch(
      midTermWeatherProvider(city: targetCity),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('현재 날씨'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(currentWeatherProvider(nx: tempNx, ny: tempNy));
          ref.invalidate(
            hourlyUltraSrtForecastProvider(nx: tempNx, ny: tempNy),
          );
          ref.invalidate(
            dailyShortTermForecastProvider(nx: tempNx, ny: tempNy),
          );
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '위치: $tempNx, $tempNy',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                currentWeatherAsync.when(
                  data: (currentWeather) {
                    return _buildCurrentWeather(context, currentWeather);
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('현재 날씨 에러: $err')),
                ),
                const SizedBox(height: 24),

                Text(
                  '시간별 예보',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                hourlyForecastAsync.when(
                  data: (hourlyForecasts) {
                    if (hourlyForecasts.isEmpty) {
                      return const Text('시간별 예보 데이터가 없습니다.');
                    }
                    return _buildHourlyForecast(
                      context,
                      hourlyForecasts.take(6).toList(),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('시간별 예보 에러: $err')),
                ),
                const SizedBox(height: 24),

                Text('일별 예보', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                dailyForecastAsync.when(
                  data: (dailyForecasts) {
                    if (dailyForecasts.isEmpty) {
                      return const Text('일별 예보 데이터가 없습니다.');
                    }
                    return _buildDailyForecast(
                      context,
                      dailyForecasts.take(6).toList(),
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('일별 예보 에러: $err')),
                ),
                // 중기 예보 UI
                Text('중기 예보', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                midTermWeatherAsync.when(
                  data: (midTermWeather) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '발표시각: ${midTermWeather.publishedTime.toLocal().toString().substring(0, 16)}',
                        ),
                        Text('종합 전망: ${midTermWeather.overallOutlook}'),
                        const SizedBox(height: 16),
                        _buildMidTermDailyForecasts(
                          context,
                          midTermWeather.dailyForecasts.take(4).toList(),
                        ),
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('중기 예보 에러: $err')),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentWeather(BuildContext context, currentWeather) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '현재 기온: ${currentWeather.temperature}°C',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              '체감온도: ${currentWeather.feelsLikeTemperature?.toStringAsFixed(1) ?? 'N/A'}°C',
            ),
            const SizedBox(height: 4),
            Text(
              '강수 형태: ${precipitationTypeToString(currentWeather.precipitationType)}',
            ),
            Text('습도: ${currentWeather.humidity}%'),
            Text('풍향: ${currentWeather.windDirectionText}'),
            Text('풍속: ${currentWeather.windSpeed}m/s'),
          ],
        ),
      ),
    );
  }

  Widget _buildHourlyForecast(
    BuildContext context,
    List<HourlyWeatherModel> hourlyForecasts,
  ) {
    return Column(
      children: hourlyForecasts.skip(1).map((forecast) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${forecast.forecastDateTime.hour}시'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('기온: ${forecast.temperature}°C')],
                ),
                Text('하늘: ${skyStatusToString(forecast.skyStatus)}'),
                Text(
                  '강수: ${precipitationTypeToString(forecast.precipitationType)}',
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDailyForecast(
    BuildContext context,
    List<DailyShortTermWeather> dailyForecasts,
  ) {
    return Column(
      children: dailyForecasts.map((forecast) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${forecast.date.month}/${forecast.date.day}'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('최고: ${forecast.maxTemperature}°C'),
                    Text('최저: ${forecast.minTemperature}°C'),
                  ],
                ),
                Text('일교차: ${forecast.tempRange.toStringAsFixed(1)}°C'),
                Text(
                  '하늘: ${skyStatusToString(forecast.representativeSkyStatus)}',
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildMidTermDailyForecasts(
    BuildContext context,
    List<DailyMidTermWeather> forecasts,
  ) {
    return Column(
      children: forecasts.skip(1).map((forecast) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${forecast.date.month}/${forecast.date.day} (${forecast.dayOffset}일 후)',
                ),
                Text(
                  '최저/최고 기온: ${forecast.minTemperature}°C / ${forecast.maxTemperature}°C',
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

String skyStatusToString(SkyStatus status) {
  switch (status) {
    case SkyStatus.sunny:
      return '맑음';
    case SkyStatus.partlyCloudy:
      return '구름 많음';
    case SkyStatus.cloudy:
      return '흐림';
  }
}

String precipitationTypeToString(PrecipitationType type) {
  switch (type) {
    case PrecipitationType.none:
      return '없음';
    case PrecipitationType.rain:
      return '비';
    case PrecipitationType.rainSnow:
      return '비/눈';
    case PrecipitationType.snow:
      return '눈';
    case PrecipitationType.shower:
      return '소나기';
    case PrecipitationType.drizzle:
      return '빗방울';
    case PrecipitationType.drizzleSnow:
      return '빗방울/눈날림';
    case PrecipitationType.snowFlurry:
      return '눈날림';
  }
}
