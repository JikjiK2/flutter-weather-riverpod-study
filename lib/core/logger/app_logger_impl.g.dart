// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_logger_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logger)
const loggerProvider = LoggerProvider._();

final class LoggerProvider
    extends $FunctionalProvider<IAppLogger, IAppLogger, IAppLogger>
    with $Provider<IAppLogger> {
  const LoggerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerHash();

  @$internal
  @override
  $ProviderElement<IAppLogger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IAppLogger create(Ref ref) {
    return logger(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IAppLogger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IAppLogger>(value),
    );
  }
}

String _$loggerHash() => r'725445526a3914715b384f04448514adff141775';
