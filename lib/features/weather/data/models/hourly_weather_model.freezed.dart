// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HourlyWeather {

 DateTime get forecastDateTime; int get nx; int get ny; double get temperature;// 기온 (T1H category)
 double get feelsLikeTemperature;// 체감온도 (계산 필요)
 SkyStatus get skyStatus;// 하늘 상태 (SKY category)
 PrecipitationType get precipitationType;// 강수 형태 (PTY category)
 double get precipitationAmount;// 1시간 강수량 (RN1 category)
 int get humidity;// 습도 (REH category)
 double get windSpeed;// 풍속 (WSD category)
 int get windDirectionDegree;// 풍향 (VEC category)
 Thunderbolt get thunderbolt;// 낙뢰 (LGT category) 
/// Create a copy of HourlyWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyWeatherCopyWith<HourlyWeather> get copyWith => _$HourlyWeatherCopyWithImpl<HourlyWeather>(this as HourlyWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyWeather&&(identical(other.forecastDateTime, forecastDateTime) || other.forecastDateTime == forecastDateTime)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature)&&(identical(other.skyStatus, skyStatus) || other.skyStatus == skyStatus)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirectionDegree, windDirectionDegree) || other.windDirectionDegree == windDirectionDegree)&&(identical(other.thunderbolt, thunderbolt) || other.thunderbolt == thunderbolt));
}


@override
int get hashCode => Object.hash(runtimeType,forecastDateTime,nx,ny,temperature,feelsLikeTemperature,skyStatus,precipitationType,precipitationAmount,humidity,windSpeed,windDirectionDegree,thunderbolt);

@override
String toString() {
  return 'HourlyWeather(forecastDateTime: $forecastDateTime, nx: $nx, ny: $ny, temperature: $temperature, feelsLikeTemperature: $feelsLikeTemperature, skyStatus: $skyStatus, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, humidity: $humidity, windSpeed: $windSpeed, windDirectionDegree: $windDirectionDegree, thunderbolt: $thunderbolt)';
}


}

/// @nodoc
abstract mixin class $HourlyWeatherCopyWith<$Res>  {
  factory $HourlyWeatherCopyWith(HourlyWeather value, $Res Function(HourlyWeather) _then) = _$HourlyWeatherCopyWithImpl;
@useResult
$Res call({
 DateTime forecastDateTime, int nx, int ny, double temperature, double feelsLikeTemperature, SkyStatus skyStatus, PrecipitationType precipitationType, double precipitationAmount, int humidity, double windSpeed, int windDirectionDegree, Thunderbolt thunderbolt
});




}
/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._self, this._then);

  final HourlyWeather _self;
  final $Res Function(HourlyWeather) _then;

/// Create a copy of HourlyWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? forecastDateTime = null,Object? nx = null,Object? ny = null,Object? temperature = null,Object? feelsLikeTemperature = null,Object? skyStatus = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? humidity = null,Object? windSpeed = null,Object? windDirectionDegree = null,Object? thunderbolt = null}) {
  return _then(_self.copyWith(
forecastDateTime: null == forecastDateTime ? _self.forecastDateTime : forecastDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,skyStatus: null == skyStatus ? _self.skyStatus : skyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirectionDegree: null == windDirectionDegree ? _self.windDirectionDegree : windDirectionDegree // ignore: cast_nullable_to_non_nullable
as int,thunderbolt: null == thunderbolt ? _self.thunderbolt : thunderbolt // ignore: cast_nullable_to_non_nullable
as Thunderbolt // ignore: cast_nullable_to_non_nullable

  ));
}

}


/// Adds pattern-matching-related methods to [HourlyWeather].
extension HourlyWeatherPatterns on HourlyWeather {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyWeather() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyWeather value)  $default,){
final _that = this;
switch (_that) {
case _HourlyWeather():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyWeather value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyWeather() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime forecastDateTime,  int nx,  int ny,  double temperature,  double feelsLikeTemperature,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int humidity,  double windSpeed,  int windDirectionDegree,  Thunderbolt thunderbolt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HourlyWeather() when $default != null:
return $default(_that.forecastDateTime,_that.nx,_that.ny,_that.temperature,_that.feelsLikeTemperature,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.humidity,_that.windSpeed,_that.windDirectionDegree,_that.thunderbolt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime forecastDateTime,  int nx,  int ny,  double temperature,  double feelsLikeTemperature,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int humidity,  double windSpeed,  int windDirectionDegree,  Thunderbolt thunderbolt)  $default,) {final _that = this;
switch (_that) {
case _HourlyWeather():
return $default(_that.forecastDateTime,_that.nx,_that.ny,_that.temperature,_that.feelsLikeTemperature,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.humidity,_that.windSpeed,_that.windDirectionDegree,_that.thunderbolt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime forecastDateTime,  int nx,  int ny,  double temperature,  double feelsLikeTemperature,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int humidity,  double windSpeed,  int windDirectionDegree,  Thunderbolt thunderbolt)?  $default,) {final _that = this;
switch (_that) {
case _HourlyWeather() when $default != null:
return $default(_that.forecastDateTime,_that.nx,_that.ny,_that.temperature,_that.feelsLikeTemperature,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.humidity,_that.windSpeed,_that.windDirectionDegree,_that.thunderbolt);case _:
  return null;

}
}

}

/// @nodoc


class _HourlyWeather implements HourlyWeather {
  const _HourlyWeather({required this.forecastDateTime, required this.nx, required this.ny, this.temperature = 0.0, this.feelsLikeTemperature = 0.0, this.skyStatus = SkyStatus.unknown, this.precipitationType = PrecipitationType.none, this.precipitationAmount = 0.0, this.humidity = 0, this.windSpeed = 0.0, this.windDirectionDegree = 0, this.thunderbolt = Thunderbolt.none});
  

@override final  DateTime forecastDateTime;
@override final  int nx;
@override final  int ny;
@override@JsonKey() final  double temperature;
// 기온 (T1H category)
@override@JsonKey() final  double feelsLikeTemperature;
// 체감온도 (계산 필요)
@override@JsonKey() final  SkyStatus skyStatus;
// 하늘 상태 (SKY category)
@override@JsonKey() final  PrecipitationType precipitationType;
// 강수 형태 (PTY category)
@override@JsonKey() final  double precipitationAmount;
// 1시간 강수량 (RN1 category)
@override@JsonKey() final  int humidity;
// 습도 (REH category)
@override@JsonKey() final  double windSpeed;
// 풍속 (WSD category)
@override@JsonKey() final  int windDirectionDegree;
// 풍향 (VEC category)
@override@JsonKey() final  Thunderbolt thunderbolt;
// 낙뢰 (LGT category)

/// Create a copy of HourlyWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyWeatherCopyWith<_HourlyWeather> get copyWith => __$HourlyWeatherCopyWithImpl<_HourlyWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyWeather&&(identical(other.forecastDateTime, forecastDateTime) || other.forecastDateTime == forecastDateTime)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature)&&(identical(other.skyStatus, skyStatus) || other.skyStatus == skyStatus)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirectionDegree, windDirectionDegree) || other.windDirectionDegree == windDirectionDegree)&&(identical(other.thunderbolt, thunderbolt) || other.thunderbolt == thunderbolt));
}


@override
int get hashCode => Object.hash(runtimeType,forecastDateTime,nx,ny,temperature,feelsLikeTemperature,skyStatus,precipitationType,precipitationAmount,humidity,windSpeed,windDirectionDegree,thunderbolt);

@override
String toString() {
  return 'HourlyWeather(forecastDateTime: $forecastDateTime, nx: $nx, ny: $ny, temperature: $temperature, feelsLikeTemperature: $feelsLikeTemperature, skyStatus: $skyStatus, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, humidity: $humidity, windSpeed: $windSpeed, windDirectionDegree: $windDirectionDegree, thunderbolt: $thunderbolt)';
}


}

/// @nodoc
abstract mixin class _$HourlyWeatherCopyWith<$Res> implements $HourlyWeatherCopyWith<$Res> {
  factory _$HourlyWeatherCopyWith(_HourlyWeather value, $Res Function(_HourlyWeather) _then) = __$HourlyWeatherCopyWithImpl;
@override @useResult
$Res call({
 DateTime forecastDateTime, int nx, int ny, double temperature, double feelsLikeTemperature, SkyStatus skyStatus, PrecipitationType precipitationType, double precipitationAmount, int humidity, double windSpeed, int windDirectionDegree, Thunderbolt thunderbolt
});




}
/// @nodoc
class __$HourlyWeatherCopyWithImpl<$Res>
    implements _$HourlyWeatherCopyWith<$Res> {
  __$HourlyWeatherCopyWithImpl(this._self, this._then);

  final _HourlyWeather _self;
  final $Res Function(_HourlyWeather) _then;

/// Create a copy of HourlyWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? forecastDateTime = null,Object? nx = null,Object? ny = null,Object? temperature = null,Object? feelsLikeTemperature = null,Object? skyStatus = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? humidity = null,Object? windSpeed = null,Object? windDirectionDegree = null,Object? thunderbolt = null,}) {
  return _then(_HourlyWeather(
forecastDateTime: null == forecastDateTime ? _self.forecastDateTime : forecastDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,skyStatus: null == skyStatus ? _self.skyStatus : skyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirectionDegree: null == windDirectionDegree ? _self.windDirectionDegree : windDirectionDegree // ignore: cast_nullable_to_non_nullable
as int,thunderbolt: null == thunderbolt ? _self.thunderbolt : thunderbolt // ignore: cast_nullable_to_non_nullable
as Thunderbolt,
  ));
}


}

// dart format on
