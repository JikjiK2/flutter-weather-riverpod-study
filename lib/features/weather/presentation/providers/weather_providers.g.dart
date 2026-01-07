// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_providers.dart';

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
    r'883f49943fb6047ecea4a2f390f7217013a2257c';

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
    r'90d6056540dc6b8fed971cc9931a591bd45ad412';

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

String _$weatherRepositoryHash() => r'c064cc2e4e7654cbbf1718f403e04d4ba5b207c1';

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
    r'0f0e1d071280ec062dbaf80cc7f39a613934bb43';

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

@ProviderFor(weatherGridCoords)
const weatherGridCoordsProvider = WeatherGridCoordsProvider._();

final class WeatherGridCoordsProvider
    extends
        $FunctionalProvider<
          AsyncValue<(int, int)>,
          (int, int),
          FutureOr<(int, int)>
        >
    with $FutureModifier<(int, int)>, $FutureProvider<(int, int)> {
  const WeatherGridCoordsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherGridCoordsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherGridCoordsHash();

  @$internal
  @override
  $FutureProviderElement<(int, int)> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<(int, int)> create(Ref ref) {
    return weatherGridCoords(ref);
  }
}

String _$weatherGridCoordsHash() => r'8dbc67e352b4a278d4cda10916875b13c256505a';

@ProviderFor(weatherAddress)
const weatherAddressProvider = WeatherAddressProvider._();

final class WeatherAddressProvider
    extends $FunctionalProvider<AsyncValue<Address>, Address, FutureOr<Address>>
    with $FutureModifier<Address>, $FutureProvider<Address> {
  const WeatherAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherAddressProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherAddressHash();

  @$internal
  @override
  $FutureProviderElement<Address> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Address> create(Ref ref) {
    return weatherAddress(ref);
  }
}

String _$weatherAddressHash() => r'fd319b7002d0e3940c276d7d3b27a914aa030336';

@ProviderFor(midTermWeather)
const midTermWeatherProvider = MidTermWeatherFamily._();

final class MidTermWeatherProvider
    extends
        $FunctionalProvider<
          AsyncValue<MidTermWeather>,
          MidTermWeather,
          FutureOr<MidTermWeather>
        >
    with $FutureModifier<MidTermWeather>, $FutureProvider<MidTermWeather> {
  const MidTermWeatherProvider._({
    required MidTermWeatherFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'midTermWeatherProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$midTermWeatherHash();

  @override
  String toString() {
    return r'midTermWeatherProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<MidTermWeather> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MidTermWeather> create(Ref ref) {
    final argument = this.argument as String;
    return midTermWeather(ref, city: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MidTermWeatherProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$midTermWeatherHash() => r'd91bc355442ddcc541c655c6485aeb3ff4f21e4f';

final class MidTermWeatherFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<MidTermWeather>, String> {
  const MidTermWeatherFamily._()
    : super(
        retry: null,
        name: r'midTermWeatherProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MidTermWeatherProvider call({required String city}) =>
      MidTermWeatherProvider._(argument: city, from: this);

  @override
  String toString() => r'midTermWeatherProvider';
}

@ProviderFor(currentWeatherByLocation)
const currentWeatherByLocationProvider = CurrentWeatherByLocationProvider._();

final class CurrentWeatherByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<CurrentWeather>,
          CurrentWeather,
          FutureOr<CurrentWeather>
        >
    with $FutureModifier<CurrentWeather>, $FutureProvider<CurrentWeather> {
  const CurrentWeatherByLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentWeatherByLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentWeatherByLocationHash();

  @$internal
  @override
  $FutureProviderElement<CurrentWeather> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CurrentWeather> create(Ref ref) {
    return currentWeatherByLocation(ref);
  }
}

String _$currentWeatherByLocationHash() =>
    r'0482ca44809abc3a8c9ef1c1314ab51fd59a1b84';

@ProviderFor(hourlyUltraSrtForecastByLocation)
const hourlyUltraSrtForecastByLocationProvider =
    HourlyUltraSrtForecastByLocationProvider._();

final class HourlyUltraSrtForecastByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HourlyWeatherModel>>,
          List<HourlyWeatherModel>,
          FutureOr<List<HourlyWeatherModel>>
        >
    with
        $FutureModifier<List<HourlyWeatherModel>>,
        $FutureProvider<List<HourlyWeatherModel>> {
  const HourlyUltraSrtForecastByLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hourlyUltraSrtForecastByLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hourlyUltraSrtForecastByLocationHash();

  @$internal
  @override
  $FutureProviderElement<List<HourlyWeatherModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HourlyWeatherModel>> create(Ref ref) {
    return hourlyUltraSrtForecastByLocation(ref);
  }
}

String _$hourlyUltraSrtForecastByLocationHash() =>
    r'6c97007296956f7cf69eab7ada655d90a2a7563c';

@ProviderFor(dailyShortTermForecastByLocation)
const dailyShortTermForecastByLocationProvider =
    DailyShortTermForecastByLocationProvider._();

final class DailyShortTermForecastByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DailyShortTermWeather>>,
          List<DailyShortTermWeather>,
          FutureOr<List<DailyShortTermWeather>>
        >
    with
        $FutureModifier<List<DailyShortTermWeather>>,
        $FutureProvider<List<DailyShortTermWeather>> {
  const DailyShortTermForecastByLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyShortTermForecastByLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyShortTermForecastByLocationHash();

  @$internal
  @override
  $FutureProviderElement<List<DailyShortTermWeather>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DailyShortTermWeather>> create(Ref ref) {
    return dailyShortTermForecastByLocation(ref);
  }
}

String _$dailyShortTermForecastByLocationHash() =>
    r'69b83428f23014a3d9c2967a694a8f918ceba534';

@ProviderFor(midTermWeatherByLocation)
const midTermWeatherByLocationProvider = MidTermWeatherByLocationProvider._();

final class MidTermWeatherByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<MidTermWeather>,
          MidTermWeather,
          FutureOr<MidTermWeather>
        >
    with $FutureModifier<MidTermWeather>, $FutureProvider<MidTermWeather> {
  const MidTermWeatherByLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'midTermWeatherByLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$midTermWeatherByLocationHash();

  @$internal
  @override
  $FutureProviderElement<MidTermWeather> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MidTermWeather> create(Ref ref) {
    return midTermWeatherByLocation(ref);
  }
}

String _$midTermWeatherByLocationHash() =>
    r'd235ef2bd254b27d41e77c02ff618cb37ba62455';

@ProviderFor(getFeelsLikeTemperatureUseCase)
const getFeelsLikeTemperatureUseCaseProvider =
    GetFeelsLikeTemperatureUseCaseProvider._();

final class GetFeelsLikeTemperatureUseCaseProvider
    extends
        $FunctionalProvider<
          GetFeelsLikeTemperatureUseCase,
          GetFeelsLikeTemperatureUseCase,
          GetFeelsLikeTemperatureUseCase
        >
    with $Provider<GetFeelsLikeTemperatureUseCase> {
  const GetFeelsLikeTemperatureUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFeelsLikeTemperatureUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFeelsLikeTemperatureUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetFeelsLikeTemperatureUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetFeelsLikeTemperatureUseCase create(Ref ref) {
    return getFeelsLikeTemperatureUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFeelsLikeTemperatureUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFeelsLikeTemperatureUseCase>(
        value,
      ),
    );
  }
}

String _$getFeelsLikeTemperatureUseCaseHash() =>
    r'fa900fa312f257d65d895056571e5e1a12df133c';

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
    r'be77d55124ccb48e1784c99159e891dd6794a37a';

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
