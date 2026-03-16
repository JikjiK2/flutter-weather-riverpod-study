// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedLocationController)
const selectedLocationControllerProvider =
    SelectedLocationControllerProvider._();

final class SelectedLocationControllerProvider
    extends $AsyncNotifierProvider<SelectedLocationController, Position> {
  const SelectedLocationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedLocationControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedLocationControllerHash();

  @$internal
  @override
  SelectedLocationController create() => SelectedLocationController();
}

String _$selectedLocationControllerHash() =>
    r'b9cf030bcd23401bc5bdc6a8fc38a1c4a95f7fcc';

abstract class _$SelectedLocationController extends $AsyncNotifier<Position> {
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
