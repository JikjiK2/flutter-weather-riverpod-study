// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(weatherGridCoords)
const weatherGridCoordsProvider = WeatherGridCoordsFamily._();

final class WeatherGridCoordsProvider
    extends $FunctionalProvider<(int, int), (int, int), (int, int)>
    with $Provider<(int, int)> {
  const WeatherGridCoordsProvider._({
    required WeatherGridCoordsFamily super.from,
    required ({double lat, double lon}) super.argument,
  }) : super(
         retry: null,
         name: r'weatherGridCoordsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$weatherGridCoordsHash();

  @override
  String toString() {
    return r'weatherGridCoordsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<(int, int)> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  (int, int) create(Ref ref) {
    final argument = this.argument as ({double lat, double lon});
    return weatherGridCoords(ref, lat: argument.lat, lon: argument.lon);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue((int, int) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<(int, int)>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherGridCoordsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$weatherGridCoordsHash() => r'e7612624610d45e8076a79e09a915debb468e2d3';

final class WeatherGridCoordsFamily extends $Family
    with $FunctionalFamilyOverride<(int, int), ({double lat, double lon})> {
  const WeatherGridCoordsFamily._()
    : super(
        retry: null,
        name: r'weatherGridCoordsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WeatherGridCoordsProvider call({required double lat, required double lon}) =>
      WeatherGridCoordsProvider._(argument: (lat: lat, lon: lon), from: this);

  @override
  String toString() => r'weatherGridCoordsProvider';
}

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

String _$currentWeatherHash() => r'fba791d7b94fbddff7a706d1c7ec21cf116e4d61';

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
          AsyncValue<List<HourlyWeather>>,
          List<HourlyWeather>,
          FutureOr<List<HourlyWeather>>
        >
    with
        $FutureModifier<List<HourlyWeather>>,
        $FutureProvider<List<HourlyWeather>> {
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
  $FutureProviderElement<List<HourlyWeather>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HourlyWeather>> create(Ref ref) {
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
    r'f1f4888251694b6bfeb95c0c9f25144ed4417d9f';

final class HourlyUltraSrtForecastFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<HourlyWeather>>,
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
    required ({int nx, int ny, String city}) super.argument,
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
    final argument = this.argument as ({int nx, int ny, String city});
    return dailyShortTermForecast(
      ref,
      nx: argument.nx,
      ny: argument.ny,
      city: argument.city,
    );
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
    r'3521733d5d25f9230aa421d051a06e0c8af1a475';

final class DailyShortTermForecastFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<DailyShortTermWeather>>,
          ({int nx, int ny, String city})
        > {
  const DailyShortTermForecastFamily._()
    : super(
        retry: null,
        name: r'dailyShortTermForecastProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  DailyShortTermForecastProvider call({
    required int nx,
    required int ny,
    required String city,
  }) => DailyShortTermForecastProvider._(
    argument: (nx: nx, ny: ny, city: city),
    from: this,
  );

  @override
  String toString() => r'dailyShortTermForecastProvider';
}
