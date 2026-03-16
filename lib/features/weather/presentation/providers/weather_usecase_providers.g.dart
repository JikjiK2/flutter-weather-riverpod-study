// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_usecase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCurrentWeatherUseCase)
const getCurrentWeatherUseCaseProvider = GetCurrentWeatherUseCaseProvider._();

final class GetCurrentWeatherUseCaseProvider
    extends
        $FunctionalProvider<
          GetCurrentWeatherUseCase,
          GetCurrentWeatherUseCase,
          GetCurrentWeatherUseCase
        >
    with $Provider<GetCurrentWeatherUseCase> {
  const GetCurrentWeatherUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentWeatherUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentWeatherUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCurrentWeatherUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCurrentWeatherUseCase create(Ref ref) {
    return getCurrentWeatherUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCurrentWeatherUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCurrentWeatherUseCase>(value),
    );
  }
}

String _$getCurrentWeatherUseCaseHash() =>
    r'58052653dceb42990a27cdf179f3a646a49e6add';

@ProviderFor(getUnifiedDailyForecastUseCase)
const getUnifiedDailyForecastUseCaseProvider =
    GetUnifiedDailyForecastUseCaseProvider._();

final class GetUnifiedDailyForecastUseCaseProvider
    extends
        $FunctionalProvider<
          GetUnifiedDailyForecastUseCase,
          GetUnifiedDailyForecastUseCase,
          GetUnifiedDailyForecastUseCase
        >
    with $Provider<GetUnifiedDailyForecastUseCase> {
  const GetUnifiedDailyForecastUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUnifiedDailyForecastUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUnifiedDailyForecastUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUnifiedDailyForecastUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUnifiedDailyForecastUseCase create(Ref ref) {
    return getUnifiedDailyForecastUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUnifiedDailyForecastUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUnifiedDailyForecastUseCase>(
        value,
      ),
    );
  }
}

String _$getUnifiedDailyForecastUseCaseHash() =>
    r'803d06168df35f1cb74b7039d1de9acd0c8e50c9';
