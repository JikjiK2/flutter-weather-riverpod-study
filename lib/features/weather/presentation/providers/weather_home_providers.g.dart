// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 선택된 위치를 기반으로 주소를 가져오는 Bridge Provider

@ProviderFor(weatherAddressByLocation)
const weatherAddressByLocationProvider = WeatherAddressByLocationProvider._();

/// 선택된 위치를 기반으로 주소를 가져오는 Bridge Provider

final class WeatherAddressByLocationProvider
    extends $FunctionalProvider<AsyncValue<Address>, Address, FutureOr<Address>>
    with $FutureModifier<Address>, $FutureProvider<Address> {
  /// 선택된 위치를 기반으로 주소를 가져오는 Bridge Provider
  const WeatherAddressByLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherAddressByLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherAddressByLocationHash();

  @$internal
  @override
  $FutureProviderElement<Address> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Address> create(Ref ref) {
    return weatherAddressByLocation(ref);
  }
}

String _$weatherAddressByLocationHash() =>
    r'8ded88c056ccffc141934964ae95ec32a9be79d2';

/// 선택된 위치를 기반으로 실시간 날씨 정보를 가져오는 Bridge Provider

@ProviderFor(currentWeatherByLocation)
const currentWeatherByLocationProvider = CurrentWeatherByLocationProvider._();

/// 선택된 위치를 기반으로 실시간 날씨 정보를 가져오는 Bridge Provider

final class CurrentWeatherByLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<CurrentWeather>,
          CurrentWeather,
          FutureOr<CurrentWeather>
        >
    with $FutureModifier<CurrentWeather>, $FutureProvider<CurrentWeather> {
  /// 선택된 위치를 기반으로 실시간 날씨 정보를 가져오는 Bridge Provider
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
    r'ce9e0c471f604ccc54cb7acd14cf3f4680d3961b';

/// 선택된 위치를 기반으로 초단기 예보 리스트를 가져오는 Bridge Provider

@ProviderFor(hourlyUltraSrtForecastByLocation)
const hourlyUltraSrtForecastByLocationProvider =
    HourlyUltraSrtForecastByLocationProvider._();

/// 선택된 위치를 기반으로 초단기 예보 리스트를 가져오는 Bridge Provider

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
  /// 선택된 위치를 기반으로 초단기 예보 리스트를 가져오는 Bridge Provider
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
    r'e1a20d3bed07b05dc15b55d70d4c085bc5c9cc65';

/// 선택된 위치를 기반으로 통합 일별 예보를 가져오는 Bridge Provider

@ProviderFor(dailyShortTermForecastByLocation)
const dailyShortTermForecastByLocationProvider =
    DailyShortTermForecastByLocationProvider._();

/// 선택된 위치를 기반으로 통합 일별 예보를 가져오는 Bridge Provider

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
  /// 선택된 위치를 기반으로 통합 일별 예보를 가져오는 Bridge Provider
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
    r'8e84bea96553c81953a4145f0d7703a55e937abc';
