import 'package:ai_weather/core/router/utils/string_extensions.dart';
import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:ai_weather/features/weather/presentation/widgets/current_weather_card.dart';
import 'package:ai_weather/features/weather/presentation/widgets/daily_forecast_section.dart';
import 'package:ai_weather/features/weather/presentation/widgets/hourly_forecast_section.dart';
import 'package:ai_weather/features/weather/presentation/widgets/mid_term_forecast_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherLocationAsync = ref.watch(weatherLocationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI 날씨'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () =>
                ref.read(weatherLocationProvider.notifier).refresh(),
            tooltip: '현재 위치로 날씨 새로고침',
          ),
        ],
      ),
      body: weatherLocationAsync.when(
        data: (position) => _buildWeatherUI(context, ref),
        loading: () => const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('위치 정보 확인 중...'),
            ],
          ),
        ),
        error: (err, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('초기 위치를 가져오는 데 실패했습니다.'),
              ElevatedButton(
                onPressed: () => ref.invalidate(weatherLocationProvider),
                child: const Text('다시 시도'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherUI(BuildContext context, WidgetRef ref) {
    final addressAsync = ref.watch(weatherAddressProvider);
    final isGpsEnabledAsync = ref.watch(locationIsServiceEnabledProvider);

    return RefreshIndicator(
      onRefresh: () => ref.read(weatherLocationProvider.notifier).refresh(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // 자식들을 전체 가로 중앙에 배치
                mainAxisSize: MainAxisSize.min, // 필요한 만큼만 공간 차지 (선택 사항)
                children: [
                  // 1. GPS 아이콘 영역
                  isGpsEnabledAsync.when(
                    data: (isEnabled) => Icon(
                      isEnabled ? Icons.gps_fixed : Icons.gps_off,
                      color: isEnabled ? Colors.black : Colors.grey,
                      size: 20,
                    ),
                    error: (e, s) => const Icon(
                      Icons.gps_not_fixed,
                      color: Colors.grey,
                      size: 20,
                    ),
                    loading: () => const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2.0),
                    ),
                  ),

                  const SizedBox(width: 12),
                  addressAsync.when(
                    data: (address) => Text(
                      address.displayAddress.removeFirstWord,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    loading: () => Text(
                      '위치 변환 중...',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    error: (err, stack) => Text(
                      '위치 변환 실패',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const CurrentWeatherCard(),
              const SizedBox(height: 24),
              const HourlyForecastSection(),
              const SizedBox(height: 24),
              const DailyForecastSection(),
              const SizedBox(height: 24),
              const MidTermForecastSection(),
            ],
          ),
        ),
      ),
    );
  }
}
