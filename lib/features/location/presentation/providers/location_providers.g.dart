// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(googleGeocodingApiDataSource)
const googleGeocodingApiDataSourceProvider =
    GoogleGeocodingApiDataSourceProvider._();

final class GoogleGeocodingApiDataSourceProvider
    extends
        $FunctionalProvider<
          GoogleGeocodingApiDataSource,
          GoogleGeocodingApiDataSource,
          GoogleGeocodingApiDataSource
        >
    with $Provider<GoogleGeocodingApiDataSource> {
  const GoogleGeocodingApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleGeocodingApiDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleGeocodingApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<GoogleGeocodingApiDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GoogleGeocodingApiDataSource create(Ref ref) {
    return googleGeocodingApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleGeocodingApiDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleGeocodingApiDataSource>(value),
    );
  }
}

String _$googleGeocodingApiDataSourceHash() =>
    r'85ec38170650b1b152e6b1b61a75fb7376bdca66';

@ProviderFor(locationPlatformDataSource)
const locationPlatformDataSourceProvider =
    LocationPlatformDataSourceProvider._();

final class LocationPlatformDataSourceProvider
    extends
        $FunctionalProvider<
          LocationPlatformDataSource,
          LocationPlatformDataSource,
          LocationPlatformDataSource
        >
    with $Provider<LocationPlatformDataSource> {
  const LocationPlatformDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationPlatformDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationPlatformDataSourceHash();

  @$internal
  @override
  $ProviderElement<LocationPlatformDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationPlatformDataSource create(Ref ref) {
    return locationPlatformDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationPlatformDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationPlatformDataSource>(value),
    );
  }
}

String _$locationPlatformDataSourceHash() =>
    r'a6b8b6db2c16fa6ef94ce794ed8c92ea5e4450a2';

@ProviderFor(locationRepository)
const locationRepositoryProvider = LocationRepositoryProvider._();

final class LocationRepositoryProvider
    extends
        $FunctionalProvider<
          LocationRepository,
          LocationRepository,
          LocationRepository
        >
    with $Provider<LocationRepository> {
  const LocationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationRepository create(Ref ref) {
    return locationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationRepository>(value),
    );
  }
}

String _$locationRepositoryHash() =>
    r'46ce75710d88b87835797d3563576270f30a8c61';

@ProviderFor(currentLocation)
const currentLocationProvider = CurrentLocationProvider._();

final class CurrentLocationProvider
    extends
        $FunctionalProvider<AsyncValue<Position>, Position, FutureOr<Position>>
    with $FutureModifier<Position>, $FutureProvider<Position> {
  const CurrentLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLocationHash();

  @$internal
  @override
  $FutureProviderElement<Position> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Position> create(Ref ref) {
    return currentLocation(ref);
  }
}

String _$currentLocationHash() => r'1cefb044cd39b493234d1f76590f36d76da23f5f';

@ProviderFor(currentAddress)
const currentAddressProvider = CurrentAddressProvider._();

final class CurrentAddressProvider
    extends $FunctionalProvider<AsyncValue<Address>, Address, FutureOr<Address>>
    with $FutureModifier<Address>, $FutureProvider<Address> {
  const CurrentAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentAddressProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentAddressHash();

  @$internal
  @override
  $FutureProviderElement<Address> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Address> create(Ref ref) {
    return currentAddress(ref);
  }
}

String _$currentAddressHash() => r'4525cdb92c8e642f479e167d9fe065dd1a778730';

@ProviderFor(locationIsServiceEnabled)
const locationIsServiceEnabledProvider = LocationIsServiceEnabledProvider._();

final class LocationIsServiceEnabledProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const LocationIsServiceEnabledProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationIsServiceEnabledProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationIsServiceEnabledHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return locationIsServiceEnabled(ref);
  }
}

String _$locationIsServiceEnabledHash() =>
    r'ffaa52b23d8a9de979fb6acc1afb62d23e6df210';

@ProviderFor(checkPermission)
const checkPermissionProvider = CheckPermissionProvider._();

final class CheckPermissionProvider
    extends
        $FunctionalProvider<
          AsyncValue<LocationPermissionStatus>,
          LocationPermissionStatus,
          FutureOr<LocationPermissionStatus>
        >
    with
        $FutureModifier<LocationPermissionStatus>,
        $FutureProvider<LocationPermissionStatus> {
  const CheckPermissionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkPermissionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkPermissionHash();

  @$internal
  @override
  $FutureProviderElement<LocationPermissionStatus> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LocationPermissionStatus> create(Ref ref) {
    return checkPermission(ref);
  }
}

String _$checkPermissionHash() => r'12690bb6b8456946278ec8bcc3d3390ebdb536cb';

@ProviderFor(requestPermission)
const requestPermissionProvider = RequestPermissionProvider._();

final class RequestPermissionProvider
    extends
        $FunctionalProvider<
          AsyncValue<LocationPermissionStatus>,
          LocationPermissionStatus,
          FutureOr<LocationPermissionStatus>
        >
    with
        $FutureModifier<LocationPermissionStatus>,
        $FutureProvider<LocationPermissionStatus> {
  const RequestPermissionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requestPermissionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$requestPermissionHash();

  @$internal
  @override
  $FutureProviderElement<LocationPermissionStatus> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LocationPermissionStatus> create(Ref ref) {
    return requestPermission(ref);
  }
}

String _$requestPermissionHash() => r'87e18b458e37011de86f6a0c1bcd16e78bba18ee';

@ProviderFor(openAppSettings)
const openAppSettingsProvider = OpenAppSettingsProvider._();

final class OpenAppSettingsProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const OpenAppSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openAppSettingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openAppSettingsHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return openAppSettings(ref);
  }
}

String _$openAppSettingsHash() => r'90d4595402e6de0e3739f9850eea1c085fc2f1c2';

@ProviderFor(openLocationSettings)
const openLocationSettingsProvider = OpenLocationSettingsProvider._();

final class OpenLocationSettingsProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const OpenLocationSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openLocationSettingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openLocationSettingsHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return openLocationSettings(ref);
  }
}

String _$openLocationSettingsHash() =>
    r'7ced4b25c0ebb852fb23584f6f38673c4c851055';

@ProviderFor(searchAddressUseCase)
const searchAddressUseCaseProvider = SearchAddressUseCaseProvider._();

final class SearchAddressUseCaseProvider
    extends
        $FunctionalProvider<
          SearchAddressUseCase,
          SearchAddressUseCase,
          SearchAddressUseCase
        >
    with $Provider<SearchAddressUseCase> {
  const SearchAddressUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchAddressUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchAddressUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchAddressUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SearchAddressUseCase create(Ref ref) {
    return searchAddressUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchAddressUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchAddressUseCase>(value),
    );
  }
}

String _$searchAddressUseCaseHash() =>
    r'86d5f92f942e6b2ee9ce2aded365f2c0c0ae33d7';

@ProviderFor(searchAddress)
const searchAddressProvider = SearchAddressFamily._();

final class SearchAddressProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, List<Address>>>,
          Map<String, List<Address>>,
          FutureOr<Map<String, List<Address>>>
        >
    with
        $FutureModifier<Map<String, List<Address>>>,
        $FutureProvider<Map<String, List<Address>>> {
  const SearchAddressProvider._({
    required SearchAddressFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchAddressProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchAddressHash();

  @override
  String toString() {
    return r'searchAddressProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Map<String, List<Address>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, List<Address>>> create(Ref ref) {
    final argument = this.argument as String;
    return searchAddress(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchAddressProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchAddressHash() => r'949da332f5be23a68011bf8ed81fb22ee431dd7e';

final class SearchAddressFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Map<String, List<Address>>>,
          String
        > {
  const SearchAddressFamily._()
    : super(
        retry: null,
        name: r'searchAddressProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchAddressProvider call(String query) =>
      SearchAddressProvider._(argument: query, from: this);

  @override
  String toString() => r'searchAddressProvider';
}

@ProviderFor(LocationSearchNotifier)
const locationSearchProvider = LocationSearchNotifierProvider._();

final class LocationSearchNotifierProvider
    extends $NotifierProvider<LocationSearchNotifier, LocationSearchState> {
  const LocationSearchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationSearchProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationSearchNotifierHash();

  @$internal
  @override
  LocationSearchNotifier create() => LocationSearchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationSearchState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationSearchState>(value),
    );
  }
}

String _$locationSearchNotifierHash() =>
    r'0d20ce03e34dde7cf6039aa14a543cee42c5e634';

abstract class _$LocationSearchNotifier extends $Notifier<LocationSearchState> {
  LocationSearchState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LocationSearchState, LocationSearchState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LocationSearchState, LocationSearchState>,
              LocationSearchState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
