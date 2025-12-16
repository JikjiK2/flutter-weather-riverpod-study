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

@ProviderFor(WeatherLocation)
const weatherLocationProvider = WeatherLocationProvider._();

final class WeatherLocationProvider
    extends $AsyncNotifierProvider<WeatherLocation, Position> {
  const WeatherLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherLocationHash();

  @$internal
  @override
  WeatherLocation create() => WeatherLocation();
}

String _$weatherLocationHash() => r'1509e8a1534a8392d5b00bd7e9d91f602fac48ee';

abstract class _$WeatherLocation extends $AsyncNotifier<Position> {
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
        isAutoDispose: true,
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

String _$weatherGridCoordsHash() => r'101ab3d6d34d302b076dd67dc65a8a1c8c0d9cb9';

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
        isAutoDispose: true,
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

String _$weatherAddressHash() => r'0bd279fa4c3ea448fe5447e918561813ec5f4493';

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
        isAutoDispose: true,
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
    r'f89ac9e2e681b392109ee368c2518949ffde1bb4';

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
        isAutoDispose: true,
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
    r'c0cbbab932c656be83732186323f52855f640969';

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
        isAutoDispose: true,
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
    r'd2a815cdeb8c4791941c3f25da171790dea95235';

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
        isAutoDispose: true,
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
    r'463b6840f35039a69b1ad482e108794837ee6cec';
