// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_short_term_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HourlyShortTermWeather {

 DateTime get dateTime;// 예보 시각 (fcstDate + fcstTime)
 double get temperature; int get humidity; double get windSpeed; int get windDirection; SkyStatus get skyStatus; PrecipitationType get precipitationType; double get precipitationAmount; int get pop;// 강수확률
 double get snowAccumulation; double get feelsLikeTemperature;
/// Create a copy of HourlyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyShortTermWeatherCopyWith<HourlyShortTermWeather> get copyWith => _$HourlyShortTermWeatherCopyWithImpl<HourlyShortTermWeather>(this as HourlyShortTermWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyShortTermWeather&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.skyStatus, skyStatus) || other.skyStatus == skyStatus)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.snowAccumulation, snowAccumulation) || other.snowAccumulation == snowAccumulation)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,humidity,windSpeed,windDirection,skyStatus,precipitationType,precipitationAmount,pop,snowAccumulation,feelsLikeTemperature);

@override
String toString() {
  return 'HourlyShortTermWeather(dateTime: $dateTime, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, skyStatus: $skyStatus, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, pop: $pop, snowAccumulation: $snowAccumulation, feelsLikeTemperature: $feelsLikeTemperature)';
}


}

/// @nodoc
abstract mixin class $HourlyShortTermWeatherCopyWith<$Res>  {
  factory $HourlyShortTermWeatherCopyWith(HourlyShortTermWeather value, $Res Function(HourlyShortTermWeather) _then) = _$HourlyShortTermWeatherCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, double temperature, int humidity, double windSpeed, int windDirection, SkyStatus skyStatus, PrecipitationType precipitationType, double precipitationAmount, int pop, double snowAccumulation, double feelsLikeTemperature
});




}
/// @nodoc
class _$HourlyShortTermWeatherCopyWithImpl<$Res>
    implements $HourlyShortTermWeatherCopyWith<$Res> {
  _$HourlyShortTermWeatherCopyWithImpl(this._self, this._then);

  final HourlyShortTermWeather _self;
  final $Res Function(HourlyShortTermWeather) _then;

/// Create a copy of HourlyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? temperature = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? skyStatus = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? pop = null,Object? snowAccumulation = null,Object? feelsLikeTemperature = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,skyStatus: null == skyStatus ? _self.skyStatus : skyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as int,snowAccumulation: null == snowAccumulation ? _self.snowAccumulation : snowAccumulation // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HourlyShortTermWeather].
extension HourlyShortTermWeatherPatterns on HourlyShortTermWeather {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyShortTermWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyShortTermWeather() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyShortTermWeather value)  $default,){
final _that = this;
switch (_that) {
case _HourlyShortTermWeather():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyShortTermWeather value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyShortTermWeather() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int pop,  double snowAccumulation,  double feelsLikeTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HourlyShortTermWeather() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.pop,_that.snowAccumulation,_that.feelsLikeTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int pop,  double snowAccumulation,  double feelsLikeTemperature)  $default,) {final _that = this;
switch (_that) {
case _HourlyShortTermWeather():
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.pop,_that.snowAccumulation,_that.feelsLikeTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  SkyStatus skyStatus,  PrecipitationType precipitationType,  double precipitationAmount,  int pop,  double snowAccumulation,  double feelsLikeTemperature)?  $default,) {final _that = this;
switch (_that) {
case _HourlyShortTermWeather() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.skyStatus,_that.precipitationType,_that.precipitationAmount,_that.pop,_that.snowAccumulation,_that.feelsLikeTemperature);case _:
  return null;

}
}

}

/// @nodoc


class _HourlyShortTermWeather implements HourlyShortTermWeather {
  const _HourlyShortTermWeather({required this.dateTime, required this.temperature, required this.humidity, required this.windSpeed, required this.windDirection, required this.skyStatus, required this.precipitationType, required this.precipitationAmount, required this.pop, required this.snowAccumulation, required this.feelsLikeTemperature});
  

@override final  DateTime dateTime;
// 예보 시각 (fcstDate + fcstTime)
@override final  double temperature;
@override final  int humidity;
@override final  double windSpeed;
@override final  int windDirection;
@override final  SkyStatus skyStatus;
@override final  PrecipitationType precipitationType;
@override final  double precipitationAmount;
@override final  int pop;
// 강수확률
@override final  double snowAccumulation;
@override final  double feelsLikeTemperature;

/// Create a copy of HourlyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyShortTermWeatherCopyWith<_HourlyShortTermWeather> get copyWith => __$HourlyShortTermWeatherCopyWithImpl<_HourlyShortTermWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyShortTermWeather&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.skyStatus, skyStatus) || other.skyStatus == skyStatus)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.snowAccumulation, snowAccumulation) || other.snowAccumulation == snowAccumulation)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,humidity,windSpeed,windDirection,skyStatus,precipitationType,precipitationAmount,pop,snowAccumulation,feelsLikeTemperature);

@override
String toString() {
  return 'HourlyShortTermWeather(dateTime: $dateTime, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, skyStatus: $skyStatus, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, pop: $pop, snowAccumulation: $snowAccumulation, feelsLikeTemperature: $feelsLikeTemperature)';
}


}

/// @nodoc
abstract mixin class _$HourlyShortTermWeatherCopyWith<$Res> implements $HourlyShortTermWeatherCopyWith<$Res> {
  factory _$HourlyShortTermWeatherCopyWith(_HourlyShortTermWeather value, $Res Function(_HourlyShortTermWeather) _then) = __$HourlyShortTermWeatherCopyWithImpl;
@override @useResult
$Res call({
 DateTime dateTime, double temperature, int humidity, double windSpeed, int windDirection, SkyStatus skyStatus, PrecipitationType precipitationType, double precipitationAmount, int pop, double snowAccumulation, double feelsLikeTemperature
});




}
/// @nodoc
class __$HourlyShortTermWeatherCopyWithImpl<$Res>
    implements _$HourlyShortTermWeatherCopyWith<$Res> {
  __$HourlyShortTermWeatherCopyWithImpl(this._self, this._then);

  final _HourlyShortTermWeather _self;
  final $Res Function(_HourlyShortTermWeather) _then;

/// Create a copy of HourlyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? temperature = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? skyStatus = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? pop = null,Object? snowAccumulation = null,Object? feelsLikeTemperature = null,}) {
  return _then(_HourlyShortTermWeather(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,skyStatus: null == skyStatus ? _self.skyStatus : skyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as int,snowAccumulation: null == snowAccumulation ? _self.snowAccumulation : snowAccumulation // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
