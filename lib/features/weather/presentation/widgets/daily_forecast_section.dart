import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

class DailyForecastSection extends ConsumerWidget {
  const DailyForecastSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyForecastAsync = ref.watch(
      dailyShortTermForecastByLocationProvider,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '일별 예보',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        dailyForecastAsync.when(
          data: (forecasts) {
            if (forecasts.isEmpty) {
              return const Center(child: Text('일별 예보 데이터가 없습니다.'));
            }
            return _buildDailyList(context, forecasts.take(6).toList());
          },
          loading: () => const _DailyLoadingSkeleton(),
          error: (err, stack) => _DailyErrorWidget(error: err),
        ),
      ],
    );
  }

  Widget _buildDailyList(
    BuildContext context,
    List<DailyShortTermWeather> forecasts,
  ) {
    return Column(
      children: forecasts
          .map((forecast) => _DailyItemTile(forecast: forecast))
          .toList(),
    );
  }
}

class _DailyItemTile extends StatelessWidget {
  final DailyShortTermWeather forecast;
  const _DailyItemTile({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade100),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: SizedBox(
          width: 70,
          child: Text(
            '${forecast.date.month}/${forecast.date.day} (${_getDayOfWeek(forecast.date)})',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        title: Row(
          children: [
            Icon(
              WeatherIconHelper.getIcon(
                sky: forecast.representativeSkyStatus,
                pty: forecast.representativePrecipitationType,
                hour: 12,
              ),
              color: WeatherIconHelper.getColor(
                sky: forecast.representativeSkyStatus,
                pty: forecast.representativePrecipitationType,
                hour: 12,
              ),
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              skyStatusToString(forecast.representativeSkyStatus),
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        trailing: SizedBox(
          width: 100,
          child: Text(
            '${forecast.minTemperature}° / ${forecast.maxTemperature}°',
            textAlign: TextAlign.right,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  String _getDayOfWeek(DateTime date) {
    const days = ['월', '화', '수', '목', '금', '토', '일'];
    return days[date.weekday - 1];
  }
}

class _DailyLoadingSkeleton extends StatelessWidget {
  const _DailyLoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (index) => Card(
          elevation: 0,
          margin: const EdgeInsets.symmetric(vertical: 4),
          color: Colors.grey[50],
          child: ListTile(
            leading: Container(width: 40, height: 16, color: Colors.grey[200]),
            title: Container(width: 60, height: 16, color: Colors.grey[100]),
            trailing: Container(width: 50, height: 16, color: Colors.grey[200]),
          ),
        ),
      ),
    );
  }
}

class _DailyErrorWidget extends ConsumerWidget {
  final Object error;
  const _DailyErrorWidget({required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('일별 예보 로드 실패', style: TextStyle(fontSize: 13)),
          TextButton(
            onPressed: () =>
                ref.invalidate(dailyShortTermForecastByLocationProvider),
            child: const Text('재시도'),
          ),
        ],
      ),
    );
  }
}
