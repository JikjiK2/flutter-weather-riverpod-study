// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(kmaShortTermApiDataSource)
const kmaShortTermApiDataSourceProvider = KmaShortTermApiDataSourceProvider._();

final class KmaShortTermApiDataSourceProvider
    extends
        $FunctionalProvider<
          KmaShortTermApiDataSource,
          KmaShortTermApiDataSource,
          KmaShortTermApiDataSource
        >
    with $Provider<KmaShortTermApiDataSource> {
  const KmaShortTermApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kmaShortTermApiDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kmaShortTermApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<KmaShortTermApiDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  KmaShortTermApiDataSource create(Ref ref) {
    return kmaShortTermApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KmaShortTermApiDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KmaShortTermApiDataSource>(value),
    );
  }
}

String _$kmaShortTermApiDataSourceHash() =>
    r'96b90c9e5ef737c9eac8f89ebe7337af6d58e483';

@ProviderFor(kmaMidTermApiDataSource)
const kmaMidTermApiDataSourceProvider = KmaMidTermApiDataSourceProvider._();

final class KmaMidTermApiDataSourceProvider
    extends
        $FunctionalProvider<
          KmaMidTermApiDataSource,
          KmaMidTermApiDataSource,
          KmaMidTermApiDataSource
        >
    with $Provider<KmaMidTermApiDataSource> {
  const KmaMidTermApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kmaMidTermApiDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kmaMidTermApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<KmaMidTermApiDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  KmaMidTermApiDataSource create(Ref ref) {
    return kmaMidTermApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KmaMidTermApiDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KmaMidTermApiDataSource>(value),
    );
  }
}

String _$kmaMidTermApiDataSourceHash() =>
    r'd62e7a651504c5a8c5440c876bd21ff33d0e52a9';
