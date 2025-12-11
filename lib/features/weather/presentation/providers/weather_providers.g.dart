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

String _$weatherRepositoryHash() => r'81d816491327761f4a21b4dc2099dde155564736';

@ProviderFor(currentWeather)
const currentWeatherProvider = CurrentWeatherFamily._();

final class CurrentWeatherProvider
    extends
        $FunctionalProvider<
          AsyncValue<CurrentWeather>,
          CurrentWeather,
          FutureOr<CurrentWeather>
        >
    with $FutureModifier<CurrentWeather>, $FutureProvider<CurrentWeather> {
  const CurrentWeatherProvider._({
    required CurrentWeatherFamily super.from,
    required ({int nx, int ny}) super.argument,
  }) : super(
         retry: null,
         name: r'currentWeatherProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$currentWeatherHash();

  @override
  String toString() {
    return r'currentWeatherProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<CurrentWeather> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CurrentWeather> create(Ref ref) {
    final argument = this.argument as ({int nx, int ny});
    return currentWeather(ref, nx: argument.nx, ny: argument.ny);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentWeatherProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$currentWeatherHash() => r'58c34783f7a55053612816c91494e758583561b5';

final class CurrentWeatherFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<CurrentWeather>,
          ({int nx, int ny})
        > {
  const CurrentWeatherFamily._()
    : super(
        retry: null,
        name: r'currentWeatherProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CurrentWeatherProvider call({required int nx, required int ny}) =>
      CurrentWeatherProvider._(argument: (nx: nx, ny: ny), from: this);

  @override
  String toString() => r'currentWeatherProvider';
}

@ProviderFor(hourlyUltraSrtForecast)
const hourlyUltraSrtForecastProvider = HourlyUltraSrtForecastFamily._();

final class HourlyUltraSrtForecastProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HourlyWeatherModel>>,
          List<HourlyWeatherModel>,
          FutureOr<List<HourlyWeatherModel>>
        >
    with
        $FutureModifier<List<HourlyWeatherModel>>,
        $FutureProvider<List<HourlyWeatherModel>> {
  const HourlyUltraSrtForecastProvider._({
    required HourlyUltraSrtForecastFamily super.from,
    required ({int nx, int ny}) super.argument,
  }) : super(
         retry: null,
         name: r'hourlyUltraSrtForecastProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$hourlyUltraSrtForecastHash();

  @override
  String toString() {
    return r'hourlyUltraSrtForecastProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<HourlyWeatherModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HourlyWeatherModel>> create(Ref ref) {
    final argument = this.argument as ({int nx, int ny});
    return hourlyUltraSrtForecast(ref, nx: argument.nx, ny: argument.ny);
  }

  @override
  bool operator ==(Object other) {
    return other is HourlyUltraSrtForecastProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$hourlyUltraSrtForecastHash() =>
    r'39aead51738403819f9e389eb69b2bda822aaf50';

final class HourlyUltraSrtForecastFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<HourlyWeatherModel>>,
          ({int nx, int ny})
        > {
  const HourlyUltraSrtForecastFamily._()
    : super(
        retry: null,
        name: r'hourlyUltraSrtForecastProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  HourlyUltraSrtForecastProvider call({required int nx, required int ny}) =>
      HourlyUltraSrtForecastProvider._(argument: (nx: nx, ny: ny), from: this);

  @override
  String toString() => r'hourlyUltraSrtForecastProvider';
}

@ProviderFor(dailyShortTermForecast)
const dailyShortTermForecastProvider = DailyShortTermForecastFamily._();

final class DailyShortTermForecastProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DailyShortTermWeather>>,
          List<DailyShortTermWeather>,
          FutureOr<List<DailyShortTermWeather>>
        >
    with
        $FutureModifier<List<DailyShortTermWeather>>,
        $FutureProvider<List<DailyShortTermWeather>> {
  const DailyShortTermForecastProvider._({
    required DailyShortTermForecastFamily super.from,
    required ({int nx, int ny}) super.argument,
  }) : super(
         retry: null,
         name: r'dailyShortTermForecastProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dailyShortTermForecastHash();

  @override
  String toString() {
    return r'dailyShortTermForecastProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<DailyShortTermWeather>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DailyShortTermWeather>> create(Ref ref) {
    final argument = this.argument as ({int nx, int ny});
    return dailyShortTermForecast(ref, nx: argument.nx, ny: argument.ny);
  }

  @override
  bool operator ==(Object other) {
    return other is DailyShortTermForecastProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dailyShortTermForecastHash() =>
    r'b261935f99eb1feabadbcf29d6e59a467f7ce62d';

final class DailyShortTermForecastFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<DailyShortTermWeather>>,
          ({int nx, int ny})
        > {
  const DailyShortTermForecastFamily._()
    : super(
        retry: null,
        name: r'dailyShortTermForecastProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  DailyShortTermForecastProvider call({required int nx, required int ny}) =>
      DailyShortTermForecastProvider._(argument: (nx: nx, ny: ny), from: this);

  @override
  String toString() => r'dailyShortTermForecastProvider';
}

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

String _$midTermWeatherHash() => r'259fde3fa05799a972b0e474d99ead2a0530ade3';

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
