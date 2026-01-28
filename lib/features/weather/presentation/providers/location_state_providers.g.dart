// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedWeatherLocation)
const selectedWeatherLocationProvider = SelectedWeatherLocationProvider._();

final class SelectedWeatherLocationProvider
    extends $AsyncNotifierProvider<SelectedWeatherLocation, Position> {
  const SelectedWeatherLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedWeatherLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedWeatherLocationHash();

  @$internal
  @override
  SelectedWeatherLocation create() => SelectedWeatherLocation();
}

String _$selectedWeatherLocationHash() =>
    r'89e83b9118c00d960cc3c31048a05630b3a41aab';

abstract class _$SelectedWeatherLocation extends $AsyncNotifier<Position> {
  FutureOr<Position> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Position>, Position>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Position>, Position>,
              AsyncValue<Position>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
