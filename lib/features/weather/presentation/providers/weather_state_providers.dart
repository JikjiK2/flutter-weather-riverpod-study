import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/location/utils/address_formatter_utils.dart';
import 'package:ai_weather/features/weather/domain/entities/mid_term_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/location_state_providers.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/features/weather/utils/kma_grid_converter_utils.dart';
import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_usecase_providers.dart';

part 'weather_state_providers.g.dart';


@Riverpod(keepAlive: true)
Future<(int nx, int ny)> weatherGridCoords(Ref ref) async {
  final position = await ref.watch(selectedWeatherLocationProvider.future);
  final grid = PointToLatLng.gpsToGRID(position.latitude, position.longitude);
  return (grid['nx']!, grid['ny']!);
}

@Riverpod(keepAlive: true)
Future<Address> weatherAddress(Ref ref) async {
  await ref.watch(weatherGridCoordsProvider.future);
  final position = ref.watch(selectedWeatherLocationProvider).value;
  final locationRepo = ref.watch(locationRepositoryProvider);

  if (position == null) {
    return const Address(
      latitude: defaultLatitude,
      longitude: defaultLongitude,
    );
  }
  try {
    final address = await locationRepo.getAddressFromCoordinates(
      lat: position.latitude,
      lon: position.longitude,
    );
    return address;
  } catch (e) {

    final lastAddress = await locationRepo.getLastAddress();
    return lastAddress ?? const Address(
      latitude: defaultLatitude,
      longitude: defaultLongitude,
    );
  }
}

@Riverpod(keepAlive: true)
Future<MidTermWeather> midTermWeather(Ref ref, {required String city}) async {
  final targetCityData = MidTermApiUtils.detailedMidTermRegion.firstWhere(
    (data) => data.city == city,
    orElse: () => throw Exception('중기 예보를 위한 도시($city)의 상세 정보를 찾을 수 없습니다.'),
  );
  final String detailedRegId = targetCityData.regId;
  final now = DateTime.now();
  final midTermBaseInfo = MidTermApiUtils.getMidTermBaseTime(now);
  final tmFc = '${midTermBaseInfo.baseDate}${midTermBaseInfo.baseTime}';

  return ref
      .watch(weatherRepositoryProvider)
      .getMidTermWeather(regId: detailedRegId, tmFc: tmFc);
}

@Riverpod(keepAlive: true)
Future<CurrentWeather> currentWeatherByLocation(Ref ref) async {
  final useCase = ref.watch(getCurrentWeatherUseCaseProvider);
  final coords = await ref.watch(weatherGridCoordsProvider.future);

  final forecast = await ref.watch(hourlyUltraSrtForecastByLocationProvider.future);

  return useCase.execute(
    nx: coords.$1,
    ny: coords.$2,
    preFetchedForecast: forecast,
  );
}

@Riverpod(keepAlive: true)
Future<List<HourlyWeather>> hourlyUltraSrtForecastByLocation(
  Ref ref,
) async {
  final coords = await ref.watch(weatherGridCoordsProvider.future);
  return ref
      .watch(weatherRepositoryProvider)
      .getUltraSrtForecastList(nx: coords.$1, ny: coords.$2);
}

@Riverpod(keepAlive: true)
Future<List<DailyShortTermWeather>> dailyShortTermForecastByLocation(
  Ref ref,
) async {
  final coords = await ref.watch(weatherGridCoordsProvider.future);
  final address = await ref.watch(weatherAddressProvider.future);
  final city = AddressFormatterUtils.extractKmaRegionName(address);
  final targetCityData = MidTermApiUtils.detailedMidTermRegion.firstWhere(
    (data) => data.city == city,
    orElse: () => throw Exception('중기 예보를 위한 도시($city)의 상세 정보를 찾을 수 없습니다.'),
  );
  final String detailedRegId = targetCityData.regId;
  final useCase = ref.watch(getUnifiedDailyForecastUseCaseProvider);
  return useCase.execute(nx: coords.$1, ny: coords.$2, regId: detailedRegId);
}

@Riverpod(keepAlive: true)
Future<MidTermWeather> midTermWeatherByLocation(Ref ref) async {
  final address = await ref.watch(weatherAddressProvider.future);
  final city = AddressFormatterUtils.extractKmaRegionName(address);
  if (city == null) {
    throw Exception('주소에서 중기 예보 지역명을 추출할 수 없습니다.');
  }
  return ref.watch(midTermWeatherProvider(city: city).future);
}
