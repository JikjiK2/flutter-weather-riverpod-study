import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncHourlyWeather = ref.watch(hourlyWeatherListProvider);
    final asyncAddress = ref.watch(currentAddressProvider);
    final asyncGpsStatus = ref.watch(gpsStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(currentLocationProvider);
              ref.invalidate(currentAddressProvider);
              ref.invalidate(hourlyWeatherListProvider);
              ref.invalidate(gpsStatusProvider);
            },
          ),
        ],
      ),
      body: Center(
        child: asyncAddress.when(
          loading: () => const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text('현재 위치 확인 중...'),
            ],
          ),
          error: (error, stackTrace) =>
              Text('위치 주소를 가져오는 데 실패했습니다: ${error.toString()}'),
          data: (address) {
            final List<String> addressComponents = [];

            // 1. 시/도 (administrativeArea_level_1)
            if (address.administrativeArea != null &&
                address.administrativeArea!.isNotEmpty) {
              addressComponents.add(address.administrativeArea!);
            }

            // 2. 시/군/구 (locality 또는 subLocality_level_1)
            // 광역시/특별시는 subLocality(구)를, 일반 도는 locality(시/군)를 우선
            if (address.administrativeArea?.contains('특별시') == true ||
                address.administrativeArea?.contains('광역시') == true) {
              if (address.subLocality != null &&
                  address.subLocality!.isNotEmpty) {
                addressComponents.add(address.subLocality!);
              } else if (address.locality != null &&
                  address.locality!.isNotEmpty) {
                addressComponents.add(address.locality!);
              }
            } else {
              if (address.locality != null && address.locality!.isNotEmpty) {
                addressComponents.add(address.locality!);
              }
            }

            // 3. 읍/면/동 (subLocality_level_2)
            if (address.subLocalityLevel2 != null &&
                address.subLocalityLevel2!.isNotEmpty) {
              addressComponents.add(address.subLocalityLevel2!);
            }

            String displayAddress = addressComponents.take(3).join(' ');
            return Column(
              children: [
                asyncGpsStatus.when(
                  loading: () => const Text('GPS 상태 확인 중...'),
                  error: (err, stack) => const Text('GPS 상태를 알 수 없습니다.'),
                  data: (isEnabled) => isEnabled
                      ? const Icon(Icons.gps_fixed)
                      : const Icon(Icons.gps_off),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '주소: $displayAddress',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: asyncHourlyWeather.when(
                    loading: () => const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 10),
                        Text('날씨 정보 불러오는 중...'),
                      ],
                    ),
                    error: (error, stackTrace) =>
                        Text('날씨 정보를 가져오는 데 실패했습니다: ${error.toString()}'),
                    data: (weatherList) {
                      if (weatherList.isEmpty) {
                        return const Text(
                          '날씨 데이터가 없습니다. (KMA API 응답에 item이 없거나 에러)',
                        );
                      }
                      final currentHourWeather = weatherList.first;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '예보 시각: ${currentHourWeather.forecastDateTime.toLocal().hour}시',
                          ),
                          Text('기온: ${currentHourWeather.temperature}°C'),
                          Text(
                            '체감 온도: ${currentHourWeather.feelsLikeTemperature.toStringAsFixed(1)}°C',
                          ),
                          Text(
                            '하늘 상태: ${currentHourWeather.skyStatus.description}',
                          ),
                          Text(
                            '강수 형태: ${currentHourWeather.precipitationType.description}',
                          ),
                          Text('습도: ${currentHourWeather.humidity}%'),
                          const SizedBox(height: 20),
                          const Text('--- 상세 예보 ---'),
                          Expanded(
                            child: ListView.builder(
                              itemCount: weatherList.length,
                              itemBuilder: (context, index) {
                                final item = weatherList[index];
                                return ListTile(
                                  title: Text(
                                    '${item.forecastDateTime.toLocal().hour}시  ${item.temperature}°C',
                                  ),
                                  subtitle: Text(
                                    '${item.skyStatus.description}, ${item.precipitationType.description}',
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
