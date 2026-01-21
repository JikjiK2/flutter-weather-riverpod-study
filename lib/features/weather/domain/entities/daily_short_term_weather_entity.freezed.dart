// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_short_term_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyShortTermWeather {

 DateTime get date;// 해당 날짜
 double get minTemperature; double get maxTemperature; double get tempRange;// ✅ 오전/오후 상태 분리 (Rich Domain Model)
 SkyStatus get morningSkyStatus; SkyStatus get afternoonSkyStatus; PrecipitationType get morningPrecipitationType; PrecipitationType get afternoonPrecipitationType; int get maxPop;
/// Create a copy of DailyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyShortTermWeatherCopyWith<DailyShortTermWeather> get copyWith => _$DailyShortTermWeatherCopyWithImpl<DailyShortTermWeather>(this as DailyShortTermWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyShortTermWeather&&(identical(other.date, date) || other.date == date)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.tempRange, tempRange) || other.tempRange == tempRange)&&(identical(other.morningSkyStatus, morningSkyStatus) || other.morningSkyStatus == morningSkyStatus)&&(identical(other.afternoonSkyStatus, afternoonSkyStatus) || other.afternoonSkyStatus == afternoonSkyStatus)&&(identical(other.morningPrecipitationType, morningPrecipitationType) || other.morningPrecipitationType == morningPrecipitationType)&&(identical(other.afternoonPrecipitationType, afternoonPrecipitationType) || other.afternoonPrecipitationType == afternoonPrecipitationType)&&(identical(other.maxPop, maxPop) || other.maxPop == maxPop));
}


@override
int get hashCode => Object.hash(runtimeType,date,minTemperature,maxTemperature,tempRange,morningSkyStatus,afternoonSkyStatus,morningPrecipitationType,afternoonPrecipitationType,maxPop);

@override
String toString() {
  return 'DailyShortTermWeather(date: $date, minTemperature: $minTemperature, maxTemperature: $maxTemperature, tempRange: $tempRange, morningSkyStatus: $morningSkyStatus, afternoonSkyStatus: $afternoonSkyStatus, morningPrecipitationType: $morningPrecipitationType, afternoonPrecipitationType: $afternoonPrecipitationType, maxPop: $maxPop)';
}


}

/// @nodoc
abstract mixin class $DailyShortTermWeatherCopyWith<$Res>  {
  factory $DailyShortTermWeatherCopyWith(DailyShortTermWeather value, $Res Function(DailyShortTermWeather) _then) = _$DailyShortTermWeatherCopyWithImpl;
@useResult
$Res call({
 DateTime date, double minTemperature, double maxTemperature, double tempRange, SkyStatus morningSkyStatus, SkyStatus afternoonSkyStatus, PrecipitationType morningPrecipitationType, PrecipitationType afternoonPrecipitationType, int maxPop
});




}
/// @nodoc
class _$DailyShortTermWeatherCopyWithImpl<$Res>
    implements $DailyShortTermWeatherCopyWith<$Res> {
  _$DailyShortTermWeatherCopyWithImpl(this._self, this._then);

  final DailyShortTermWeather _self;
  final $Res Function(DailyShortTermWeather) _then;

/// Create a copy of DailyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? minTemperature = null,Object? maxTemperature = null,Object? tempRange = null,Object? morningSkyStatus = null,Object? afternoonSkyStatus = null,Object? morningPrecipitationType = null,Object? afternoonPrecipitationType = null,Object? maxPop = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,tempRange: null == tempRange ? _self.tempRange : tempRange // ignore: cast_nullable_to_non_nullable
as double,morningSkyStatus: null == morningSkyStatus ? _self.morningSkyStatus : morningSkyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,afternoonSkyStatus: null == afternoonSkyStatus ? _self.afternoonSkyStatus : afternoonSkyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,morningPrecipitationType: null == morningPrecipitationType ? _self.morningPrecipitationType : morningPrecipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,afternoonPrecipitationType: null == afternoonPrecipitationType ? _self.afternoonPrecipitationType : afternoonPrecipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,maxPop: null == maxPop ? _self.maxPop : maxPop // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyShortTermWeather].
extension DailyShortTermWeatherPatterns on DailyShortTermWeather {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyShortTermWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyShortTermWeather() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyShortTermWeather value)  $default,){
final _that = this;
switch (_that) {
case _DailyShortTermWeather():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyShortTermWeather value)?  $default,){
final _that = this;
switch (_that) {
case _DailyShortTermWeather() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double minTemperature,  double maxTemperature,  double tempRange,  SkyStatus morningSkyStatus,  SkyStatus afternoonSkyStatus,  PrecipitationType morningPrecipitationType,  PrecipitationType afternoonPrecipitationType,  int maxPop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyShortTermWeather() when $default != null:
return $default(_that.date,_that.minTemperature,_that.maxTemperature,_that.tempRange,_that.morningSkyStatus,_that.afternoonSkyStatus,_that.morningPrecipitationType,_that.afternoonPrecipitationType,_that.maxPop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double minTemperature,  double maxTemperature,  double tempRange,  SkyStatus morningSkyStatus,  SkyStatus afternoonSkyStatus,  PrecipitationType morningPrecipitationType,  PrecipitationType afternoonPrecipitationType,  int maxPop)  $default,) {final _that = this;
switch (_that) {
case _DailyShortTermWeather():
return $default(_that.date,_that.minTemperature,_that.maxTemperature,_that.tempRange,_that.morningSkyStatus,_that.afternoonSkyStatus,_that.morningPrecipitationType,_that.afternoonPrecipitationType,_that.maxPop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double minTemperature,  double maxTemperature,  double tempRange,  SkyStatus morningSkyStatus,  SkyStatus afternoonSkyStatus,  PrecipitationType morningPrecipitationType,  PrecipitationType afternoonPrecipitationType,  int maxPop)?  $default,) {final _that = this;
switch (_that) {
case _DailyShortTermWeather() when $default != null:
return $default(_that.date,_that.minTemperature,_that.maxTemperature,_that.tempRange,_that.morningSkyStatus,_that.afternoonSkyStatus,_that.morningPrecipitationType,_that.afternoonPrecipitationType,_that.maxPop);case _:
  return null;

}
}

}

/// @nodoc


class _DailyShortTermWeather extends DailyShortTermWeather {
  const _DailyShortTermWeather({required this.date, required this.minTemperature, required this.maxTemperature, required this.tempRange, required this.morningSkyStatus, required this.afternoonSkyStatus, required this.morningPrecipitationType, required this.afternoonPrecipitationType, required this.maxPop}): super._();
  

@override final  DateTime date;
// 해당 날짜
@override final  double minTemperature;
@override final  double maxTemperature;
@override final  double tempRange;
// ✅ 오전/오후 상태 분리 (Rich Domain Model)
@override final  SkyStatus morningSkyStatus;
@override final  SkyStatus afternoonSkyStatus;
@override final  PrecipitationType morningPrecipitationType;
@override final  PrecipitationType afternoonPrecipitationType;
@override final  int maxPop;

/// Create a copy of DailyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyShortTermWeatherCopyWith<_DailyShortTermWeather> get copyWith => __$DailyShortTermWeatherCopyWithImpl<_DailyShortTermWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyShortTermWeather&&(identical(other.date, date) || other.date == date)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.tempRange, tempRange) || other.tempRange == tempRange)&&(identical(other.morningSkyStatus, morningSkyStatus) || other.morningSkyStatus == morningSkyStatus)&&(identical(other.afternoonSkyStatus, afternoonSkyStatus) || other.afternoonSkyStatus == afternoonSkyStatus)&&(identical(other.morningPrecipitationType, morningPrecipitationType) || other.morningPrecipitationType == morningPrecipitationType)&&(identical(other.afternoonPrecipitationType, afternoonPrecipitationType) || other.afternoonPrecipitationType == afternoonPrecipitationType)&&(identical(other.maxPop, maxPop) || other.maxPop == maxPop));
}


@override
int get hashCode => Object.hash(runtimeType,date,minTemperature,maxTemperature,tempRange,morningSkyStatus,afternoonSkyStatus,morningPrecipitationType,afternoonPrecipitationType,maxPop);

@override
String toString() {
  return 'DailyShortTermWeather(date: $date, minTemperature: $minTemperature, maxTemperature: $maxTemperature, tempRange: $tempRange, morningSkyStatus: $morningSkyStatus, afternoonSkyStatus: $afternoonSkyStatus, morningPrecipitationType: $morningPrecipitationType, afternoonPrecipitationType: $afternoonPrecipitationType, maxPop: $maxPop)';
}


}

/// @nodoc
abstract mixin class _$DailyShortTermWeatherCopyWith<$Res> implements $DailyShortTermWeatherCopyWith<$Res> {
  factory _$DailyShortTermWeatherCopyWith(_DailyShortTermWeather value, $Res Function(_DailyShortTermWeather) _then) = __$DailyShortTermWeatherCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double minTemperature, double maxTemperature, double tempRange, SkyStatus morningSkyStatus, SkyStatus afternoonSkyStatus, PrecipitationType morningPrecipitationType, PrecipitationType afternoonPrecipitationType, int maxPop
});




}
/// @nodoc
class __$DailyShortTermWeatherCopyWithImpl<$Res>
    implements _$DailyShortTermWeatherCopyWith<$Res> {
  __$DailyShortTermWeatherCopyWithImpl(this._self, this._then);

  final _DailyShortTermWeather _self;
  final $Res Function(_DailyShortTermWeather) _then;

/// Create a copy of DailyShortTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? minTemperature = null,Object? maxTemperature = null,Object? tempRange = null,Object? morningSkyStatus = null,Object? afternoonSkyStatus = null,Object? morningPrecipitationType = null,Object? afternoonPrecipitationType = null,Object? maxPop = null,}) {
  return _then(_DailyShortTermWeather(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as double,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as double,tempRange: null == tempRange ? _self.tempRange : tempRange // ignore: cast_nullable_to_non_nullable
as double,morningSkyStatus: null == morningSkyStatus ? _self.morningSkyStatus : morningSkyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,afternoonSkyStatus: null == afternoonSkyStatus ? _self.afternoonSkyStatus : afternoonSkyStatus // ignore: cast_nullable_to_non_nullable
as SkyStatus,morningPrecipitationType: null == morningPrecipitationType ? _self.morningPrecipitationType : morningPrecipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,afternoonPrecipitationType: null == afternoonPrecipitationType ? _self.afternoonPrecipitationType : afternoonPrecipitationType // ignore: cast_nullable_to_non_nullable
as PrecipitationType,maxPop: null == maxPop ? _self.maxPop : maxPop // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
