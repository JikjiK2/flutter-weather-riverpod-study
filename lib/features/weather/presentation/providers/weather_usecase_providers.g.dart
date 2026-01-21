// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_usecase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(weatherRepository)
const weatherRepositoryProvider = WeatherRepositoryProvider._();

final class WeatherRepositoryProvider
    extends
        $FunctionalProvider<
          WeatherRepository,
          WeatherRepository,
          WeatherRepository
        >
    with $Provider<WeatherRepository> {
  const WeatherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherRepositoryHash();

  @$internal
  @override
  $ProviderElement<WeatherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WeatherRepository create(Ref ref) {
    return weatherRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WeatherRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WeatherRepository>(value),
    );
  }
}

String _$weatherRepositoryHash() => r'c6f2fd2a2972e900bc15af0ccf58b76fa126b96c';

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
