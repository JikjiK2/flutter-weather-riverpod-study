import 'dart:async';
import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/location/utils/address_formatter_utils.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/domain/models/mid_term_weather_model.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_feels_like_temperature_usecase.dart';
import 'package:ai_weather/features/weather/domain/usecases/get_unified_daily_forecast_usecase.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/weather/utils/kma_grid_converter_utils.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/domain/models/current_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/domain/models/daily_short_term_weather_model.dart';
import 'package:ai_weather/app/providers/app_providers.dart';

part 'weather_providers.g.dart';

@Riverpod(keepAlive: true)
KmaShortTermApiDataSource kmaShortTermApiDataSource(Ref ref) {
  return KmaShortTermApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
KmaMidTermApiDataSource kmaMidTermApiDataSource(Ref ref) {
  return KmaMidTermApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepositoryImpl(
    ref.watch(kmaShortTermApiDataSourceProvider),
    ref.watch(kmaMidTermApiDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
class SelectedWeatherLocation extends _$SelectedWeatherLocation {
  @override
  Future<Position> build() async => _determinePosition();

  Future<Position> _determinePosition() async {
    final locationRepo = ref.read(locationRepositoryProvider);
    try {
      appLogger.i('실시간 위치 요청 시도');
      final position = await locationRepo.getCurrentPosition();
      unawaited(
        locationRepo.saveLastLocation(
          lat: position.latitude,
          lon: position.longitude,
        ),
      );
      return position;
    } catch (e) {
      appLogger.w('실시간 위치 실패, 저장 위치 확인: $e');
      final lastPosition = await locationRepo.getLastLocation();
      return lastPosition ?? _defaultPosition();
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _determinePosition());
  }

  Future<void> updateLocation(Position newPosition) async {
    state = AsyncData(newPosition);
  }

  Position _defaultPosition() => Position(
    latitude: defaultLatitude,
    longitude: defaultLongitude,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    altitudeAccuracy: 0.0,
    heading: 0.0,
    headingAccuracy: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
  );
}

@Riverpod(keepAlive: true)
Future<(int nx, int ny)> weatherGridCoords(Ref ref) async {
  final position = await ref.watch(selectedWeatherLocationProvider.future);
  final grid = PointToLatLng.gpsToGRID(position.latitude, position.longitude);
  return (grid['nx']!, grid['ny']!);
}

@Riverpod(keepAlive: true)
Future<Address> weatherAddress(Ref ref) async {
  final position = await ref.watch(selectedWeatherLocationProvider.future);
  final address = await ref
      .watch(locationRepositoryProvider)
      .getAddressFromCoordinates(
        lat: position.latitude,
        lon: position.longitude,
      );
  return address;
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

  return useCase.execute(nx: coords.$1, ny: coords.$2);
}

@Riverpod(keepAlive: true)
Future<List<HourlyWeatherModel>> hourlyUltraSrtForecastByLocation(
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
  appLogger.i('중기 예보 지역: $city');
  return ref.watch(midTermWeatherProvider(city: city).future);
}

@Riverpod(keepAlive: true)
GetFeelsLikeTemperatureUseCase getFeelsLikeTemperatureUseCase(Ref ref) {
  return GetFeelsLikeTemperatureUseCase();
}

@riverpod
GetCurrentWeatherUseCase getCurrentWeatherUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  final feelsLikeUseCase = ref.watch(getFeelsLikeTemperatureUseCaseProvider);
  return GetCurrentWeatherUseCase(repository, feelsLikeUseCase);
}

@riverpod
GetUnifiedDailyForecastUseCase getUnifiedDailyForecastUseCase(Ref ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetUnifiedDailyForecastUseCase(repository);
}
