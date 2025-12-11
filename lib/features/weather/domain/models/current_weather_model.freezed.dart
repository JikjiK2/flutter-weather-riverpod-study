// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentWeather {

 DateTime get dateTime;// 관측 시각 (baseDate + baseTime)
 double get temperature; int get humidity; double get windSpeed; int get windDirection; String get windDirectionText; PrecipitationType get precipitationType; double get precipitationAmount; double get feelsLikeTemperature;
/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<CurrentWeather> get copyWith => _$CurrentWeatherCopyWithImpl<CurrentWeather>(this as CurrentWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeather&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.windDirectionText, windDirectionText) || other.windDirectionText == windDirectionText)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,humidity,windSpeed,windDirection,windDirectionText,precipitationType,precipitationAmount,feelsLikeTemperature);

@override
String toString() {
  return 'CurrentWeather(dateTime: $dateTime, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, windDirectionText: $windDirectionText, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, feelsLikeTemperature: $feelsLikeTemperature)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherCopyWith<$Res>  {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) _then) = _$CurrentWeatherCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, double temperature, int humidity, double windSpeed, int windDirection, String windDirectionText, PrecipitationType precipitationType, double precipitationAmount, double feelsLikeTemperature
});




}
/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._self, this._then);

  final CurrentWeather _self;
  final $Res Function(CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? temperature = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? windDirectionText = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? feelsLikeTemperature = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,windDirectionText: null == windDirectionText ? _self.windDirectionText : windDirectionText // ignore: cast_nullable_to_non_nullable
as String,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentWeather].
extension CurrentWeatherPatterns on CurrentWeather {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentWeather value)  $default,){
final _that = this;
switch (_that) {
case _CurrentWeather():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentWeather value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  String windDirectionText,  PrecipitationType precipitationType,  double precipitationAmount,  double feelsLikeTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.windDirectionText,_that.precipitationType,_that.precipitationAmount,_that.feelsLikeTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  String windDirectionText,  PrecipitationType precipitationType,  double precipitationAmount,  double feelsLikeTemperature)  $default,) {final _that = this;
switch (_that) {
case _CurrentWeather():
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.windDirectionText,_that.precipitationType,_that.precipitationAmount,_that.feelsLikeTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime dateTime,  double temperature,  int humidity,  double windSpeed,  int windDirection,  String windDirectionText,  PrecipitationType precipitationType,  double precipitationAmount,  double feelsLikeTemperature)?  $default,) {final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that.dateTime,_that.temperature,_that.humidity,_that.windSpeed,_that.windDirection,_that.windDirectionText,_that.precipitationType,_that.precipitationAmount,_that.feelsLikeTemperature);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentWeather implements CurrentWeather {
  const _CurrentWeather({required this.dateTime, this.temperature = 0.0, this.humidity = 0, this.windSpeed = 0.0, this.windDirection = 0, this.windDirectionText = '풍향 알 수 없음', this.precipitationType = PrecipitationType.none, this.precipitationAmount = 0.0, this.feelsLikeTemperature = 0.0});
  

@override final  DateTime dateTime;
// 관측 시각 (baseDate + baseTime)
@override@JsonKey() final  double temperature;
@override@JsonKey() final  int humidity;
@override@JsonKey() final  double windSpeed;
@override@JsonKey() final  int windDirection;
@override@JsonKey() final  String windDirectionText;
@override@JsonKey() final  PrecipitationType precipitationType;
@override@JsonKey() final  double precipitationAmount;
@override@JsonKey() final  double feelsLikeTemperature;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherCopyWith<_CurrentWeather> get copyWith => __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeather&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.windDirectionText, windDirectionText) || other.windDirectionText == windDirectionText)&&(identical(other.precipitationType, precipitationType) || other.precipitationType == precipitationType)&&(identical(other.precipitationAmount, precipitationAmount) || other.precipitationAmount == precipitationAmount)&&(identical(other.feelsLikeTemperature, feelsLikeTemperature) || other.feelsLikeTemperature == feelsLikeTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,humidity,windSpeed,windDirection,windDirectionText,precipitationType,precipitationAmount,feelsLikeTemperature);

@override
String toString() {
  return 'CurrentWeather(dateTime: $dateTime, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, windDirectionText: $windDirectionText, precipitationType: $precipitationType, precipitationAmount: $precipitationAmount, feelsLikeTemperature: $feelsLikeTemperature)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(_CurrentWeather value, $Res Function(_CurrentWeather) _then) = __$CurrentWeatherCopyWithImpl;
@override @useResult
$Res call({
 DateTime dateTime, double temperature, int humidity, double windSpeed, int windDirection, String windDirectionText, PrecipitationType precipitationType, double precipitationAmount, double feelsLikeTemperature
});




}
/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(this._self, this._then);

  final _CurrentWeather _self;
  final $Res Function(_CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? temperature = null,Object? humidity = null,Object? windSpeed = null,Object? windDirection = null,Object? windDirectionText = null,Object? precipitationType = null,Object? precipitationAmount = null,Object? feelsLikeTemperature = null,}) {
  return _then(_CurrentWeather(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,windDirectionText: null == windDirectionText ? _self.windDirectionText : windDirectionText // ignore: cast_nullable_to_non_nullable
as String,precipitationType: null == precipitationType ? _self.precipitationType : precipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,precipitationAmount: null == precipitationAmount ? _self.precipitationAmount : precipitationAmount // ignore: cast_nullable_to_non_nullable
as double,feelsLikeTemperature: null == feelsLikeTemperature ? _self.feelsLikeTemperature : feelsLikeTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
