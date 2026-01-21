import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/presentation/utils/weather_icon_helper.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_state_providers.dart';
import 'package:ai_weather/features/weather/presentation/widgets/section_error_widget.dart';

class DailyForecastSection extends ConsumerWidget {
  const DailyForecastSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyForecastAsync = ref.watch(dailyShortTermForecastByLocationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            '일별 예보',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: dailyForecastAsync.when(
            data: (forecasts) => _buildUnifiedCard(context, forecasts, false),
            loading: () => Skeletonizer(
              enabled: true,
              child: _buildUnifiedCard(
                  context,
                  List.generate(7, (_) => DailyShortTermWeather.dummy),
                  true
              ),
            ),
            error: (err, stack) => SectionErrorWidget(
              message: '일별 예보 로드 실패',
              onRetry: () => ref.invalidate(dailyShortTermForecastByLocationProvider),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUnifiedCard(BuildContext context, List<DailyShortTermWeather> forecasts, bool isLoading) {
    return Card(
      key: ValueKey(isLoading),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: forecasts.length,
          separatorBuilder: (context, index) => Divider(
            height: 1,
            indent: 16,
            endIndent: 16,
            color: Colors.grey.shade100,
          ),
          itemBuilder: (context, index) {
            return _DailyItemRow(forecast: forecasts[index]);
          },
        ),
      ),
    );
  }
}

class _DailyItemRow extends StatelessWidget {
  final DailyShortTermWeather forecast;
  const _DailyItemRow({required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          SizedBox(
            width: 65,
            child: Text(
              forecast.getDisplayDate(DateTime.now()),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _WeatherSmallIcon(
                  sky: forecast.morningSkyStatus,
                  pty: forecast.morningPrecipitationType,
                  hour: 9,
                ),
                const SizedBox(width: 12),
                // 오후 아이콘
                _WeatherSmallIcon(
                  sky: forecast.afternoonSkyStatus,
                  pty: forecast.afternoonPrecipitationType,
                  hour: 15,
                ),
              ],
            ),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 30,
                child: Text(
                  '${forecast.maxTemperature.round()}°',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
                child: Text(
                  '${forecast.minTemperature.round()}°',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WeatherSmallIcon extends StatelessWidget {
  final SkyStatus sky;
  final PrecipitationType pty;
  final int hour;

  const _WeatherSmallIcon({
    required this.sky,
    required this.pty,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      WeatherIconHelper.getIcon(sky: sky, pty: pty, hour: hour),
      size: 18,
      color: WeatherIconHelper.getColor(sky: sky, pty: pty, hour: hour),
    );
  }
}