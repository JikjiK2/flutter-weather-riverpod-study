import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/location/presentation/providers/selected_location_controller.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_data_providers.dart';

part 'weather_home_providers.g.dart';

@Riverpod(keepAlive: true)
Future<Address> weatherAddressByLocation(Ref ref) async {
  final position = await ref.watch(selectedLocationControllerProvider.future);
  return ref.watch(addressFromCoordinatesProvider(lat: position.latitude, lon: position.longitude).future);
}

@Riverpod(keepAlive: true)
Future<CurrentWeather> currentWeatherByLocation(Ref ref) async {
  final position = await ref.watch(selectedLocationControllerProvider.future);
  final coords = ref.watch(weatherGridCoordsProvider(lat: position.latitude, lon: position.longitude));
  return ref.watch(currentWeatherProvider(nx: coords.$1, ny: coords.$2).future);
}

@Riverpod(keepAlive: true)
Future<List<HourlyWeather>> hourlyUltraSrtForecastByLocation(Ref ref) async {
  final position = await ref.watch(selectedLocationControllerProvider.future);
  final coords = ref.watch(weatherGridCoordsProvider(lat: position.latitude, lon: position.longitude));
  return ref.watch(hourlyUltraSrtForecastProvider(nx: coords.$1, ny: coords.$2).future);
}

@Riverpod(keepAlive: true)
Future<List<DailyShortTermWeather>> dailyShortTermForecastByLocation(Ref ref) async {
  final position = await ref.watch(selectedLocationControllerProvider.future);
  final coords = ref.watch(weatherGridCoordsProvider(lat: position.latitude, lon: position.longitude));

  final address = await ref.watch(weatherAddressByLocationProvider.future);
  final city = address.administrativeArea ?? '';

  return ref.watch(dailyShortTermForecastProvider(nx: coords.$1, ny: coords.$2, city: city).future);
}
