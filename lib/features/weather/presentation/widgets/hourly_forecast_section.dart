import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

class HourlyForecastSection extends ConsumerWidget {
  const HourlyForecastSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hourlyForecastAsync = ref.watch(
      hourlyUltraSrtForecastByLocationProvider,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '시간별 예보',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        hourlyForecastAsync.when(
          data: (forecasts) {
            if (forecasts.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('예보 데이터가 없습니다.'),
                ),
              );
            }
            return _buildHourlyList(forecasts.take(6).toList());
          },
          loading: () => const _HourlyLoadingSkeleton(),
          error: (err, stack) => _HourlyErrorWidget(error: err),
        ),
      ],
    );
  }

  Widget _buildHourlyList(List<HourlyWeatherModel> forecasts) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: forecasts.length,
        itemBuilder: (context, index) =>
            _HourlyItemCard(forecast: forecasts[index]),
      ),
    );
  }
}

class _HourlyItemCard extends StatelessWidget {
  final HourlyWeatherModel forecast;
  const _HourlyItemCard({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      margin: const EdgeInsets.only(right: 8),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.shade200),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${forecast.forecastDateTime.hour}시',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Icon(
                WeatherIconHelper.getIcon(
                  sky: forecast.skyStatus,
                  pty: forecast.precipitationType,
                  hour: forecast.forecastDateTime.hour,
                ),
                color: WeatherIconHelper.getColor(
                  sky: forecast.skyStatus,
                  pty: forecast.precipitationType,
                  hour: forecast.forecastDateTime.hour,
                ),
              ),
              Text(
                '${forecast.temperature}°',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                skyStatusToString(forecast.skyStatus),
                style: const TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HourlyLoadingSkeleton extends StatelessWidget {
  const _HourlyLoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          width: 85,
          margin: const EdgeInsets.only(right: 8),
          child: Card(
            elevation: 0,
            color: Colors.grey[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _SkeletonBox(width: 40, height: 12),
                  CircleAvatar(radius: 12, backgroundColor: Colors.white),
                  _SkeletonBox(width: 30, height: 16),
                  _SkeletonBox(width: 40, height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HourlyErrorWidget extends ConsumerWidget {
  final Object error;
  const _HourlyErrorWidget({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.refresh_rounded, color: Colors.redAccent),
          const SizedBox(height: 8),
          const Text('시간별 예보 로드 실패', style: TextStyle(fontSize: 12)),
          TextButton(
            onPressed: () =>
                ref.invalidate(hourlyUltraSrtForecastByLocationProvider),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }
}

class _SkeletonBox extends StatelessWidget {
  final double width;
  final double height;
  const _SkeletonBox({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
