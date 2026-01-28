import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_state_providers.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

class HourlyForecastSection extends ConsumerWidget {
  const HourlyForecastSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hourlyForecastAsync = ref.watch(
      hourlyUltraSrtForecastByLocationProvider,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: hourlyForecastAsync.when(
        data: (forecasts) => _buildContent(context, forecasts, false),
        loading: () => Skeletonizer(
          enabled: true,
          child: _buildContent(
            context,
            List.generate(6, (_) => HourlyWeather.dummy),
            true,
          ),
        ),
        error: (err, stack) => const SizedBox.shrink(),
      ),
    );
  }
}

Widget _buildContent(
  BuildContext context,
  List<HourlyWeather> forecasts,
  bool isLoading,
) {
  return Column(
    key: ValueKey(isLoading),
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('시간별 예보', style: TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 12),
      SizedBox(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: forecasts.length,
          itemBuilder: (context, index) =>
              _HourlyItemCard(forecast: forecasts[index]),
        ),
      ),
    ],
  );
}

class _HourlyItemCard extends StatelessWidget {
  final HourlyWeather forecast;

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

