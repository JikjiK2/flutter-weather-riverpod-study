import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/core/utils/string_extensions.dart';
import 'package:ai_weather/core/error/failures.dart';
import 'package:ai_weather/core/network/network_status_provider.dart';
import 'package:ai_weather/features/weather/presentation/screens/network_error_screen.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/location_state_providers.dart';
import 'package:ai_weather/features/weather/presentation/widgets/current_weather_card.dart';
import 'package:ai_weather/features/weather/presentation/widgets/daily_forecast_section.dart';
import 'package:ai_weather/features/weather/presentation/widgets/hourly_forecast_section.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_state_providers.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isNetworkConnectedAsync = ref.watch(isNetworkConnectedProvider);

    return isNetworkConnectedAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (err, stack) => Scaffold(
        body: NetworkErrorView(
          message: '네트워크 상태를 확인할 수 없습니다.',
          onRetry: () => ref.invalidate(isNetworkConnectedProvider),
        ),
      ),
      data: (isConnected) {
        if (!isConnected) {
          return Scaffold(
            body: NetworkErrorView(
              message: '네트워크 연결이 끊겼습니다.',
              onRetry: () => ref.invalidate(selectedWeatherLocationProvider),
            ),
          );
        }
        return _buildWeatherMainScaffold(context, ref);
      },
    );
  }
  Widget _buildWeatherMainScaffold(BuildContext context, WidgetRef ref) {
    final weatherLocationAsync = ref.watch(selectedWeatherLocationProvider);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => context.push('/search_address'),

          tooltip: '주소 검색',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => context.push('/info'),
            tooltip: '정보',
          ),
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () =>
                ref.read(selectedWeatherLocationProvider.notifier).refresh(),
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
        error: (err, stack) {
          if (err is NetworkFailure) {
            return NetworkErrorView(
              message: err.message,
              onRetry: () => ref.invalidate(selectedWeatherLocationProvider),
            );
          }
          return _buildWeatherUI(context, ref);
        }
      ),
    );
  }

  Widget _buildWeatherUI(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () =>
          ref.read(selectedWeatherLocationProvider.notifier).refresh(),
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer(
                builder: (context, ref, _) {
                  final isGpsEnabledAsync = ref.watch(
                    locationIsServiceEnabledProvider,
                  );
                  return isGpsEnabledAsync.when(
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
                    loading: () => const Icon(
                      Icons.gps_fixed,
                      color: Colors.grey,
                      size: 20,
                    ),
                  );
                },
              ),
              const SizedBox(width: 12),
              Consumer(
                builder: (context, ref, _) {
                  final addressAsync = ref.watch(weatherAddressProvider);
                  return addressAsync.when(
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
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          const RepaintBoundary(child: CurrentWeatherCard()),
          const SizedBox(height: 24),
          const RepaintBoundary(child: HourlyForecastSection()),
          const SizedBox(height: 24),
          const RepaintBoundary(child: DailyForecastSection()),
        ],
      ),
    );
  }
}
