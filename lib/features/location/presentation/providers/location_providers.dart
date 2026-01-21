import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/location/domain/usecases/address_search_usecase.dart';
import 'package:ai_weather/core/logger/app_logger_impl.dart';
import 'package:ai_weather/features/location/data/repositories/location_repository_impl.dart';

part 'location_providers.g.dart';

const double defaultLatitude = 37.5665;
const double defaultLongitude = 126.9780;

const _searchHistoryKey = 'searchHistory';

@Riverpod(keepAlive: true)
LocationRepository locationRepository(Ref ref) {
  return LocationRepositoryImpl(
    ref.watch(googleGeocodingApiDataSourceProvider),
    ref.watch(locationPlatformDataSourceProvider),
    ref.watch(loggerProvider),
  );
}

@Riverpod(keepAlive: true)
Future<Position> currentLocation(Ref ref) async {
  return ref.watch(locationRepositoryProvider).getCurrentPosition();
}

@Riverpod(keepAlive: true)
Future<Address> currentAddress(Ref ref) async {
  final currentPosition = await ref.watch(currentLocationProvider.future);
  return ref
      .watch(locationRepositoryProvider)
      .getAddressFromCoordinates(
    lat: currentPosition.latitude,
    lon: currentPosition.longitude,
  );
}

@Riverpod(keepAlive: true)
Future<bool> locationIsServiceEnabled(Ref ref) async {
  return ref.watch(locationRepositoryProvider).isLocationServiceEnabled();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> checkPermission(Ref ref) async {
  return ref.watch(locationRepositoryProvider).checkPermission();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> requestPermission(Ref ref) async {
  return ref.watch(locationRepositoryProvider).requestPermission();
}

@Riverpod(keepAlive: true)
Future<void> openAppSettings(Ref ref) async {
  return ref.watch(locationRepositoryProvider).openAppSettings();
}

@Riverpod(keepAlive: true)
Future<void> openLocationSettings(Ref ref) async {
  return ref.watch(locationRepositoryProvider).openLocationSettings();
}

@riverpod
SearchAddressUseCase searchAddressUseCase(Ref ref) {
  final repository = ref.watch(locationRepositoryProvider);
  return SearchAddressUseCase(repository);
}

@Riverpod(keepAlive: true)
class LocationSearchHistory extends _$LocationSearchHistory {
  @override
  FutureOr<List<String>> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_searchHistoryKey) ?? [];
  }

  Future<void> addTerm(String term) async {
    if (term.trim().isEmpty) return;
    final current = state.value ?? [];
    final next = [term, ...current.where((t) => t != term)].take(10).toList();

    state = AsyncValue.data(next);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_searchHistoryKey, next);
  }

  Future<void> removeTerm(String term) async {
    final current = state.value ?? [];
    final next = current.where((t) => t != term).toList();

    state = AsyncValue.data(next);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_searchHistoryKey, next);
  }

  Future<void> clearHistory() async {
    state = const AsyncValue.data([]);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_searchHistoryKey);
  }
}

@riverpod
class AddressSearch extends _$AddressSearch {
  @override
  FutureOr<List<Address>> build() => [];

  Future<void> search(String query) async {
    final trimmedQuery = query.trim();
    if (trimmedQuery.length < 2) {
      state = const AsyncValue.data([]);
      return;
    }

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(searchAddressUseCaseProvider);
      return await usecase.execute(query: trimmedQuery);
    });
  }

  void clear() {
    state = const AsyncValue.data([]);
  }
}