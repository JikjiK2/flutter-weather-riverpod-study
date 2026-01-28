// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
    r'76e76484cc5e9f85dc26383801675dd2771f7e60';

@ProviderFor(locationIsServiceEnabled)
const locationIsServiceEnabledProvider = LocationIsServiceEnabledProvider._();

final class LocationIsServiceEnabledProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
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
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return locationIsServiceEnabled(ref);
  }
}

String _$locationIsServiceEnabledHash() =>
    r'd3dbe7db373ccbfac3742c15cbc1a9bc2af52313';

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

String _$checkPermissionHash() => r'7c53cba3be8df09630cdf505230a36f41b3e46e7';

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

String _$requestPermissionHash() => r'7999fb9f3f3e13a1504ae98bc33fea952cc74038';

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

String _$openAppSettingsHash() => r'72f72dbbe012af6da4689551767c67832cd8ed5f';

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
    r'15a345b6fe01d5aba4a4e2dcb891a879483d5c0b';

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

@ProviderFor(LocationSearchHistory)
const locationSearchHistoryProvider = LocationSearchHistoryProvider._();

final class LocationSearchHistoryProvider
    extends $AsyncNotifierProvider<LocationSearchHistory, List<Address>> {
  const LocationSearchHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationSearchHistoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationSearchHistoryHash();

  @$internal
  @override
  LocationSearchHistory create() => LocationSearchHistory();
}

String _$locationSearchHistoryHash() =>
    r'4d800882a13d3180e4731acaa2ca4a93151a152d';

abstract class _$LocationSearchHistory extends $AsyncNotifier<List<Address>> {
  FutureOr<List<Address>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Address>>, List<Address>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Address>>, List<Address>>,
              AsyncValue<List<Address>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AddressSearch)
const addressSearchProvider = AddressSearchProvider._();

final class AddressSearchProvider
    extends $AsyncNotifierProvider<AddressSearch, List<Address>> {
  const AddressSearchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addressSearchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addressSearchHash();

  @$internal
  @override
  AddressSearch create() => AddressSearch();
}

String _$addressSearchHash() => r'821386a468d7042e4916175d469b5ef643f4c0e3';

abstract class _$AddressSearch extends $AsyncNotifier<List<Address>> {
  FutureOr<List<Address>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Address>>, List<Address>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Address>>, List<Address>>,
              AsyncValue<List<Address>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
