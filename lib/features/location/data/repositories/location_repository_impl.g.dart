// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_repository_impl.dart';

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
    r'840a2daf5b7fc842f3f36cc041a052c705bd8e46';

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
