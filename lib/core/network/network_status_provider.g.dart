// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(isNetworkConnected)
const isNetworkConnectedProvider = IsNetworkConnectedProvider._();

final class IsNetworkConnectedProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  const IsNetworkConnectedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isNetworkConnectedProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isNetworkConnectedHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return isNetworkConnected(ref);
  }
}

String _$isNetworkConnectedHash() =>
    r'fffb27a5295202cac93b89bea5dd930ced061d7f';
