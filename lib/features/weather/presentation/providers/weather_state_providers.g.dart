// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$weatherAddressHash() => r'51b85def461070c8f90d7f1897ebbf6ca3b2f74f';

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
    r'76a4bb92096f985b2c8b5e758f1d0e5ba984751c';

@ProviderFor(hourlyUltraSrtForecastByLocation)
const hourlyUltraSrtForecastByLocationProvider =
    HourlyUltraSrtForecastByLocationProvider._();

final class HourlyUltraSrtForecastByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HourlyWeather>>,
          List<HourlyWeather>,
          FutureOr<List<HourlyWeather>>
        >
    with
        $FutureModifier<List<HourlyWeather>>,
        $FutureProvider<List<HourlyWeather>> {
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
  $FutureProviderElement<List<HourlyWeather>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HourlyWeather>> create(Ref ref) {
    return hourlyUltraSrtForecastByLocation(ref);
  }
}

String _$hourlyUltraSrtForecastByLocationHash() =>
    r'ca479a7a80c9f071b9fb8a75eca04a2d1b620b59';

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
    r'86dd6dccd20b91ee353202c18505e19e7a3656ea';
