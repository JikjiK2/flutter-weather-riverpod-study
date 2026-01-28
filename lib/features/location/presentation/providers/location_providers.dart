import 'dart:convert';
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
Stream<bool> locationIsServiceEnabled(Ref ref) async* {
  yield await Geolocator.isLocationServiceEnabled();
  yield* Geolocator.getServiceStatusStream()
      .map((status) => status == ServiceStatus.enabled);
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
  FutureOr<List<Address>> build() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_searchHistoryKey) ?? [];
    return jsonList.map((e) => Address.fromJson(json.decode(e))).toList();
  }

  Future<void> addAddress(Address address) async {
    final current = state.value ?? [];
    final next = [address, ...current.where((a) => a.displayAddress != address.displayAddress)]
        .take(10).toList();

    state = AsyncValue.data(next);
    final prefs = await SharedPreferences.getInstance();
    final jsonList = next.map((e) => json.encode(e.toJson())).toList();
    await prefs.setStringList(_searchHistoryKey, jsonList);
  }

  Future<void> removeAddress(Address address) async {
    final current = state.value ?? [];
    final next = current.where((a) => a.displayAddress != address.displayAddress).toList();

    state = AsyncValue.data(next);
    final prefs = await SharedPreferences.getInstance();
    final jsonList = next.map((e) => json.encode(e.toJson())).toList();
    await prefs.setStringList(_searchHistoryKey, jsonList);
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