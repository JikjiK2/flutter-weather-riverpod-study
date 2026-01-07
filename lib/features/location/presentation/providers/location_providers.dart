import 'package:ai_weather/features/location/data/datasources/location_platform_datasource.dart';
import 'package:ai_weather/features/location/data/repositories/location_repository_impl.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_data_source.dart';
import 'package:ai_weather/features/location/domain/models/location_search_state_model.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';
import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:ai_weather/features/location/domain/usecases/search_address_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'location_providers.g.dart';

const double defaultLatitude = 37.5665;
const double defaultLongitude = 126.9780;

const _searchHistoryKey = 'searchHistory';

@Riverpod(keepAlive: true)
GoogleGeocodingApiDataSource googleGeocodingApiDataSource(Ref ref) {
  return GoogleGeocodingApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
LocationPlatformDataSource locationPlatformDataSource(Ref ref) {
  return GeolocatorDataSourceImpl();
}

@Riverpod(keepAlive: true)
LocationRepository locationRepository(Ref ref) {
  return LocationRepositoryImpl(
    ref.read(googleGeocodingApiDataSourceProvider),
    ref.read(locationPlatformDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
Future<Position> currentLocation(Ref ref) async {
  return ref.read(locationRepositoryProvider).getCurrentPosition();
}

@Riverpod(keepAlive: true)
Future<Address> currentAddress(Ref ref) async {
  final currentPosition = await ref.watch(currentLocationProvider.future);
  return ref
      .read(locationRepositoryProvider)
      .getAddressFromCoordinates(
        lat: currentPosition.latitude,
        lon: currentPosition.longitude,
      );
}

@Riverpod(keepAlive: true)
Future<bool> locationIsServiceEnabled(Ref ref) async {
  return ref.read(locationRepositoryProvider).isLocationServiceEnabled();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> checkPermission(Ref ref) async {
  return ref.read(locationRepositoryProvider).checkPermission();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> requestPermission(Ref ref) async {
  return ref.read(locationRepositoryProvider).requestPermission();
}

@Riverpod(keepAlive: true)
Future<void> openAppSettings(Ref ref) async {
  return ref.read(locationRepositoryProvider).openAppSettings();
}

@Riverpod(keepAlive: true)
Future<void> openLocationSettings(Ref ref) async {
  return ref.read(locationRepositoryProvider).openLocationSettings();
}

@riverpod
SearchAddressUseCase searchAddressUseCase(Ref ref) {
  final repository = ref.watch(locationRepositoryProvider);
  return SearchAddressUseCase(repository);
}

@riverpod
Future<Map<String, List<Address>>> searchAddress(Ref ref, String query) async {
  final usecase = ref.watch(searchAddressUseCaseProvider);

  if (query.trim().isEmpty || query.trim().length < 2) {
    return {};
  }
  return usecase.execute(query: query);
}

@Riverpod(keepAlive: true)
class LocationSearchNotifier extends _$LocationSearchNotifier {
  late final SharedPreferences _prefs;

  @override
  LocationSearchState build() {
    _init();
    return const LocationSearchState(
      query: '',
      suggestions: [],
      isLoading: false,
      searchHistory: [],
    );
  }

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
    _loadSearchHistory();
  }

  void _loadSearchHistory() {
    final history = _prefs.getStringList(_searchHistoryKey) ?? [];
    state = state.copyWith(searchHistory: history);
  }

  Future<void> addSearchTerm(String term) async {
    final newHistory = [term, ...state.searchHistory.where((t) => t != term)];
    final limitedHistory = newHistory.take(10).toList();
    state = state.copyWith(searchHistory: limitedHistory);
    await _prefs.setStringList(_searchHistoryKey, limitedHistory);
  }

  Future<void> removeSearchTerm(String term) async {
    final newHistory = state.searchHistory.where((t) => t != term).toList();
    state = state.copyWith(searchHistory: newHistory);
    await _prefs.setStringList(_searchHistoryKey, newHistory);
  }

  Future<void> clearSearchHistory() async {
    state = state.copyWith(searchHistory: []);
    await _prefs.remove(_searchHistoryKey);
  }

  void clearSuggestions() {
    state = state.copyWith(
      suggestions: [],
      query: '',
      errorMessage: null,
      isLoading: false,
    );
  }

  Future<void> searchAddresses(String query) async {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty || trimmedQuery.length < 2) {
      state = state.copyWith(
        query: query,
        suggestions: [],
        isLoading: false,
        errorMessage: null,
      );
      return;
    }

    state = state.copyWith(query: query, isLoading: true, errorMessage: null);

    try {
      final usecase = ref.read(searchAddressUseCaseProvider);
      final result = await usecase.execute(query: query);

      final newSuggestions = result.values.expand((list) => list).toList();

      state = state.copyWith(
        suggestions: newSuggestions,
        isLoading: false,
        errorMessage: null,
      );
    } catch (e) {
      state = state.copyWith(
        suggestions: [],
        isLoading: false,
        errorMessage: '검색 중 오류 발생: ${e.toString()}',
      );
    }
  }
}
