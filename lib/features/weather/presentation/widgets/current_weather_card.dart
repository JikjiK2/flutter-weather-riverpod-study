import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentWeatherCard extends ConsumerWidget {
  const CurrentWeatherCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 합성된 현재 날씨 정보를 구독합니다.
    final currentWeatherAsync = ref.watch(currentWeatherByLocationProvider);

    return currentWeatherAsync.when(
      data: (weather) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('현재 날씨', style: Theme.of(context).textTheme.titleMedium),
              const Divider(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 왼쪽: 날씨 아이콘과 상태 메시지
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        WeatherIconHelper.getIcon(
                          sky: weather.skyStatus!,
                          pty: weather.precipitationType,
                          hour: DateTime.now().hour,
                        ),
                        color: WeatherIconHelper.getColor(
                          sky: weather.skyStatus!,
                          pty: weather.precipitationType,
                          hour: DateTime.now().hour,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        skyStatusToString(weather.skyStatus!),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // 오른쪽: 큰 기온 표시
                  Text(
                    '${weather.temperature}°',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // 하단: 습도 등 상세 정보
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _InfoItem(label: '습도', value: '${weather.humidity}%'),
                  _InfoItem(
                    label: '체감',
                    value:
                        '${weather.feelsLikeTemperature.toStringAsFixed(1)}°',
                  ),
                  _InfoItem(label: '풍속', value: '${weather.windSpeed}m/s'),
                ],
              ),
            ],
          ),
        ),
      ),
      loading: () => const _LoadingCard(), // 이전에 만든 스켈레톤 적용
      error: (err, stack) =>
          _ErrorCard(error: err.toString()), // 이전에 만든 에러 위젯 적용
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;
  const _InfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class _LoadingCard extends StatelessWidget {
  const _LoadingCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 80, height: 20, color: Colors.grey[300]),
            const Divider(height: 20),
            Container(width: 150, height: 40, color: Colors.grey[200]),
            const SizedBox(height: 16),

            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  width: double.infinity,
                  height: 14,
                  color: Colors.grey[100],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorCard extends ConsumerWidget {
  final String error;
  const _ErrorCard({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.red[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.error_outline, color: Colors.red),
            const SizedBox(height: 8),
            Text(
              '현재 날씨 정보를 불러오지 못했습니다.',
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              error,
              style: TextStyle(color: Colors.red[700], fontSize: 12),
              textAlign: TextAlign.center,
            ),
            TextButton.icon(
              onPressed: () {
                ref.invalidate(weatherLocationProvider);
              },
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('다시 시도'),
            ),
          ],
        ),
      ),
    );
  }
}
