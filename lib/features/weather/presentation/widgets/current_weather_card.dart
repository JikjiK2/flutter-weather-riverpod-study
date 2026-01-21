import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/presentation/providers/location_state_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_state_providers.dart';
import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';


class CurrentWeatherCard extends ConsumerWidget {
  const CurrentWeatherCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentWeatherAsync = ref.watch(currentWeatherByLocationProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: currentWeatherAsync.when(
        data: (weather) => _buildCard(context, weather, false),
        loading: () => Skeletonizer(
          enabled: true,
      child: _buildCard(context, CurrentWeather.dummy, true),
        ),
        error: (err, stack) => _ErrorCard(error: err.toString()),
      ),
    );
  }
}

Widget _buildCard(BuildContext context, CurrentWeather weather, bool isLoading) {
  final currentHour = DateTime.now().hour;
  return Card(
    key: ValueKey(isLoading ? 'loading' : 'data'),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    WeatherIconHelper.getIcon(
                      sky: weather.skyStatus!,
                      pty: weather.precipitationType,
                      hour: currentHour,
                    ),
                    color: WeatherIconHelper.getColor(
                      sky: weather.skyStatus!,
                      pty: weather.precipitationType,
                      hour: currentHour,
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
  );
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
                ref.invalidate(selectedWeatherLocationProvider);
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
