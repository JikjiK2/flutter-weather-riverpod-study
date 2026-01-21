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

String _$currentLocationHash() => r'7d8625bdad40c2bd7acd4021c032cd870934b68d';

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

String _$currentAddressHash() => r'c2380f696c2990eeead9b137756de16a9d6322b3';

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
    r'b7a288dc28252a9f001d99e60d77cc52b3d82abc';

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

/// ✅ [개선] 주소 검색 기록을 관리하는 독립적인 프로바이더
/// SharedPreferences와의 동기화를 AsyncValue로 처리합니다.

@ProviderFor(LocationSearchHistory)
const locationSearchHistoryProvider = LocationSearchHistoryProvider._();

/// ✅ [개선] 주소 검색 기록을 관리하는 독립적인 프로바이더
/// SharedPreferences와의 동기화를 AsyncValue로 처리합니다.
final class LocationSearchHistoryProvider
    extends $AsyncNotifierProvider<LocationSearchHistory, List<String>> {
  /// ✅ [개선] 주소 검색 기록을 관리하는 독립적인 프로바이더
  /// SharedPreferences와의 동기화를 AsyncValue로 처리합니다.
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
    r'f1473be46837981c17fff78434550d0836448daa';

/// ✅ [개선] 주소 검색 기록을 관리하는 독립적인 프로바이더
/// SharedPreferences와의 동기화를 AsyncValue로 처리합니다.

abstract class _$LocationSearchHistory extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// ✅ [개선] 주소 검색 결과를 관리하는 프로바이더
/// 기존의 isLoading, errorMessage 필드 대신 AsyncValue를 직접 사용합니다.

@ProviderFor(AddressSearch)
const addressSearchProvider = AddressSearchProvider._();

/// ✅ [개선] 주소 검색 결과를 관리하는 프로바이더
/// 기존의 isLoading, errorMessage 필드 대신 AsyncValue를 직접 사용합니다.
final class AddressSearchProvider
    extends $AsyncNotifierProvider<AddressSearch, List<Address>> {
  /// ✅ [개선] 주소 검색 결과를 관리하는 프로바이더
  /// 기존의 isLoading, errorMessage 필드 대신 AsyncValue를 직접 사용합니다.
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

/// ✅ [개선] 주소 검색 결과를 관리하는 프로바이더
/// 기존의 isLoading, errorMessage 필드 대신 AsyncValue를 직접 사용합니다.

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
