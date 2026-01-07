import 'package:ai_weather/features/weather/presentation/utils/weather_matcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/features/weather/domain/models/daily_mid_term_model.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';

class MidTermForecastSection extends ConsumerWidget {
  const MidTermForecastSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final midTermForecastAsync = ref.watch(midTermWeatherByLocationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '주간 예보 (중기)',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            midTermForecastAsync
                    .whenData(
                      (data) => Text(
                        '${data.publishedTime.month}/${data.publishedTime.day} 발표',
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                      ),
                    )
                    .value ??
                const SizedBox.shrink(),
          ],
        ),
        const SizedBox(height: 12),

        midTermForecastAsync.when(
          data: (midTermWeather) {
            final forecasts = midTermWeather.dailyForecasts;
            if (forecasts.isEmpty) return const Text('중기 예보 데이터가 없습니다.');

            return Column(
              children: forecasts
                  .map((f) => _MidTermItemTile(forecast: f))
                  .toList(),
            );
          },
          loading: () => const _MidTermLoadingSkeleton(),
          error: (err, stack) => _MidTermErrorWidget(error: err),
        ),
      ],
    );
  }
}

class _MidTermItemTile extends StatelessWidget {
  final DailyMidTermWeather forecast;
  const _MidTermItemTile({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '${forecast.date.month}/${forecast.date.day} (${_getDayOfWeek(forecast.date)})',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              MidTermWeatherMatcher.getIcon(
                forecast.weatherDescriptionMorning ?? '',
              ),
              color: MidTermWeatherMatcher.getColor(
                forecast.weatherDescriptionMorning ?? '',
              ),
              size: 20,
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              MidTermWeatherMatcher.getIcon(
                forecast.weatherDescriptionAfternoon ?? '',
              ),
              color: MidTermWeatherMatcher.getColor(
                forecast.weatherDescriptionAfternoon ?? '',
              ),
              size: 20,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '${forecast.minTemperature}° / ${forecast.maxTemperature}°',
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  String _getDayOfWeek(DateTime date) {
    const days = ['월', '화', '수', '목', '금', '토', '일'];
    return days[date.weekday - 1];
  }
}

class _MidTermLoadingSkeleton extends StatelessWidget {
  const _MidTermLoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) => Container(
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class _MidTermErrorWidget extends ConsumerWidget {
  final Object error;
  const _MidTermErrorWidget({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('중기 예보 데이터를 가져오지 못했습니다.', style: TextStyle(fontSize: 13)),
          TextButton(
            onPressed: () => ref.invalidate(midTermWeatherByLocationProvider),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }
}
