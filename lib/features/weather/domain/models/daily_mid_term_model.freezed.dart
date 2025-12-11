// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_mid_term_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyMidTermWeather {

 DateTime get date; int get dayOffset; int get minTemperature; int get maxTemperature; int? get minTempLowConfidence; int? get minTempHighConfidence; int? get maxTempLowConfidence; int? get maxTempHighConfidence;// 육상 예보 정보 (중기 육상 예보에서 옴)
 int? get precipitationProbMorning; int? get precipitationProbAfternoon; String? get weatherDescriptionMorning; String? get weatherDescriptionAfternoon;
/// Create a copy of DailyMidTermWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyMidTermWeatherCopyWith<DailyMidTermWeather> get copyWith => _$DailyMidTermWeatherCopyWithImpl<DailyMidTermWeather>(this as DailyMidTermWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyMidTermWeather&&(identical(other.date, date) || other.date == date)&&(identical(other.dayOffset, dayOffset) || other.dayOffset == dayOffset)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTempLowConfidence, minTempLowConfidence) || other.minTempLowConfidence == minTempLowConfidence)&&(identical(other.minTempHighConfidence, minTempHighConfidence) || other.minTempHighConfidence == minTempHighConfidence)&&(identical(other.maxTempLowConfidence, maxTempLowConfidence) || other.maxTempLowConfidence == maxTempLowConfidence)&&(identical(other.maxTempHighConfidence, maxTempHighConfidence) || other.maxTempHighConfidence == maxTempHighConfidence)&&(identical(other.precipitationProbMorning, precipitationProbMorning) || other.precipitationProbMorning == precipitationProbMorning)&&(identical(other.precipitationProbAfternoon, precipitationProbAfternoon) || other.precipitationProbAfternoon == precipitationProbAfternoon)&&(identical(other.weatherDescriptionMorning, weatherDescriptionMorning) || other.weatherDescriptionMorning == weatherDescriptionMorning)&&(identical(other.weatherDescriptionAfternoon, weatherDescriptionAfternoon) || other.weatherDescriptionAfternoon == weatherDescriptionAfternoon));
}


@override
int get hashCode => Object.hash(runtimeType,date,dayOffset,minTemperature,maxTemperature,minTempLowConfidence,minTempHighConfidence,maxTempLowConfidence,maxTempHighConfidence,precipitationProbMorning,precipitationProbAfternoon,weatherDescriptionMorning,weatherDescriptionAfternoon);

@override
String toString() {
  return 'DailyMidTermWeather(date: $date, dayOffset: $dayOffset, minTemperature: $minTemperature, maxTemperature: $maxTemperature, minTempLowConfidence: $minTempLowConfidence, minTempHighConfidence: $minTempHighConfidence, maxTempLowConfidence: $maxTempLowConfidence, maxTempHighConfidence: $maxTempHighConfidence, precipitationProbMorning: $precipitationProbMorning, precipitationProbAfternoon: $precipitationProbAfternoon, weatherDescriptionMorning: $weatherDescriptionMorning, weatherDescriptionAfternoon: $weatherDescriptionAfternoon)';
}


}

/// @nodoc
abstract mixin class $DailyMidTermWeatherCopyWith<$Res>  {
  factory $DailyMidTermWeatherCopyWith(DailyMidTermWeather value, $Res Function(DailyMidTermWeather) _then) = _$DailyMidTermWeatherCopyWithImpl;
@useResult
$Res call({
 DateTime date, int dayOffset, int minTemperature, int maxTemperature, int? minTempLowConfidence, int? minTempHighConfidence, int? maxTempLowConfidence, int? maxTempHighConfidence, int? precipitationProbMorning, int? precipitationProbAfternoon, String? weatherDescriptionMorning, String? weatherDescriptionAfternoon
});




}
/// @nodoc
class _$DailyMidTermWeatherCopyWithImpl<$Res>
    implements $DailyMidTermWeatherCopyWith<$Res> {
  _$DailyMidTermWeatherCopyWithImpl(this._self, this._then);

  final DailyMidTermWeather _self;
  final $Res Function(DailyMidTermWeather) _then;

/// Create a copy of DailyMidTermWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? dayOffset = null,Object? minTemperature = null,Object? maxTemperature = null,Object? minTempLowConfidence = freezed,Object? minTempHighConfidence = freezed,Object? maxTempLowConfidence = freezed,Object? maxTempHighConfidence = freezed,Object? precipitationProbMorning = freezed,Object? precipitationProbAfternoon = freezed,Object? weatherDescriptionMorning = freezed,Object? weatherDescriptionAfternoon = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dayOffset: null == dayOffset ? _self.dayOffset : dayOffset // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTempLowConfidence: freezed == minTempLowConfidence ? _self.minTempLowConfidence : minTempLowConfidence // ignore: cast_nullable_to_non_nullable
as int?,minTempHighConfidence: freezed == minTempHighConfidence ? _self.minTempHighConfidence : minTempHighConfidence // ignore: cast_nullable_to_non_nullable
as int?,maxTempLowConfidence: freezed == maxTempLowConfidence ? _self.maxTempLowConfidence : maxTempLowConfidence // ignore: cast_nullable_to_non_nullable
as int?,maxTempHighConfidence: freezed == maxTempHighConfidence ? _self.maxTempHighConfidence : maxTempHighConfidence // ignore: cast_nullable_to_non_nullable
as int?,precipitationProbMorning: freezed == precipitationProbMorning ? _self.precipitationProbMorning : precipitationProbMorning // ignore: cast_nullable_to_non_nullable
as int?,precipitationProbAfternoon: freezed == precipitationProbAfternoon ? _self.precipitationProbAfternoon : precipitationProbAfternoon // ignore: cast_nullable_to_non_nullable
as int?,weatherDescriptionMorning: freezed == weatherDescriptionMorning ? _self.weatherDescriptionMorning : weatherDescriptionMorning // ignore: cast_nullable_to_non_nullable
as String?,weatherDescriptionAfternoon: freezed == weatherDescriptionAfternoon ? _self.weatherDescriptionAfternoon : weatherDescriptionAfternoon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyMidTermWeather].
extension DailyMidTermWeatherPatterns on DailyMidTermWeather {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyMidTermWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyMidTermWeather() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyMidTermWeather value)  $default,){
final _that = this;
switch (_that) {
case _DailyMidTermWeather():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyMidTermWeather value)?  $default,){
final _that = this;
switch (_that) {
case _DailyMidTermWeather() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int dayOffset,  int minTemperature,  int maxTemperature,  int? minTempLowConfidence,  int? minTempHighConfidence,  int? maxTempLowConfidence,  int? maxTempHighConfidence,  int? precipitationProbMorning,  int? precipitationProbAfternoon,  String? weatherDescriptionMorning,  String? weatherDescriptionAfternoon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyMidTermWeather() when $default != null:
return $default(_that.date,_that.dayOffset,_that.minTemperature,_that.maxTemperature,_that.minTempLowConfidence,_that.minTempHighConfidence,_that.maxTempLowConfidence,_that.maxTempHighConfidence,_that.precipitationProbMorning,_that.precipitationProbAfternoon,_that.weatherDescriptionMorning,_that.weatherDescriptionAfternoon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int dayOffset,  int minTemperature,  int maxTemperature,  int? minTempLowConfidence,  int? minTempHighConfidence,  int? maxTempLowConfidence,  int? maxTempHighConfidence,  int? precipitationProbMorning,  int? precipitationProbAfternoon,  String? weatherDescriptionMorning,  String? weatherDescriptionAfternoon)  $default,) {final _that = this;
switch (_that) {
case _DailyMidTermWeather():
return $default(_that.date,_that.dayOffset,_that.minTemperature,_that.maxTemperature,_that.minTempLowConfidence,_that.minTempHighConfidence,_that.maxTempLowConfidence,_that.maxTempHighConfidence,_that.precipitationProbMorning,_that.precipitationProbAfternoon,_that.weatherDescriptionMorning,_that.weatherDescriptionAfternoon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int dayOffset,  int minTemperature,  int maxTemperature,  int? minTempLowConfidence,  int? minTempHighConfidence,  int? maxTempLowConfidence,  int? maxTempHighConfidence,  int? precipitationProbMorning,  int? precipitationProbAfternoon,  String? weatherDescriptionMorning,  String? weatherDescriptionAfternoon)?  $default,) {final _that = this;
switch (_that) {
case _DailyMidTermWeather() when $default != null:
return $default(_that.date,_that.dayOffset,_that.minTemperature,_that.maxTemperature,_that.minTempLowConfidence,_that.minTempHighConfidence,_that.maxTempLowConfidence,_that.maxTempHighConfidence,_that.precipitationProbMorning,_that.precipitationProbAfternoon,_that.weatherDescriptionMorning,_that.weatherDescriptionAfternoon);case _:
  return null;

}
}

}

/// @nodoc


class _DailyMidTermWeather implements DailyMidTermWeather {
  const _DailyMidTermWeather({required this.date, required this.dayOffset, required this.minTemperature, required this.maxTemperature, this.minTempLowConfidence, this.minTempHighConfidence, this.maxTempLowConfidence, this.maxTempHighConfidence, this.precipitationProbMorning, this.precipitationProbAfternoon, this.weatherDescriptionMorning, this.weatherDescriptionAfternoon});
  

@override final  DateTime date;
@override final  int dayOffset;
@override final  int minTemperature;
@override final  int maxTemperature;
@override final  int? minTempLowConfidence;
@override final  int? minTempHighConfidence;
@override final  int? maxTempLowConfidence;
@override final  int? maxTempHighConfidence;
// 육상 예보 정보 (중기 육상 예보에서 옴)
@override final  int? precipitationProbMorning;
@override final  int? precipitationProbAfternoon;
@override final  String? weatherDescriptionMorning;
@override final  String? weatherDescriptionAfternoon;

/// Create a copy of DailyMidTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyMidTermWeatherCopyWith<_DailyMidTermWeather> get copyWith => __$DailyMidTermWeatherCopyWithImpl<_DailyMidTermWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyMidTermWeather&&(identical(other.date, date) || other.date == date)&&(identical(other.dayOffset, dayOffset) || other.dayOffset == dayOffset)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTempLowConfidence, minTempLowConfidence) || other.minTempLowConfidence == minTempLowConfidence)&&(identical(other.minTempHighConfidence, minTempHighConfidence) || other.minTempHighConfidence == minTempHighConfidence)&&(identical(other.maxTempLowConfidence, maxTempLowConfidence) || other.maxTempLowConfidence == maxTempLowConfidence)&&(identical(other.maxTempHighConfidence, maxTempHighConfidence) || other.maxTempHighConfidence == maxTempHighConfidence)&&(identical(other.precipitationProbMorning, precipitationProbMorning) || other.precipitationProbMorning == precipitationProbMorning)&&(identical(other.precipitationProbAfternoon, precipitationProbAfternoon) || other.precipitationProbAfternoon == precipitationProbAfternoon)&&(identical(other.weatherDescriptionMorning, weatherDescriptionMorning) || other.weatherDescriptionMorning == weatherDescriptionMorning)&&(identical(other.weatherDescriptionAfternoon, weatherDescriptionAfternoon) || other.weatherDescriptionAfternoon == weatherDescriptionAfternoon));
}


@override
int get hashCode => Object.hash(runtimeType,date,dayOffset,minTemperature,maxTemperature,minTempLowConfidence,minTempHighConfidence,maxTempLowConfidence,maxTempHighConfidence,precipitationProbMorning,precipitationProbAfternoon,weatherDescriptionMorning,weatherDescriptionAfternoon);

@override
String toString() {
  return 'DailyMidTermWeather(date: $date, dayOffset: $dayOffset, minTemperature: $minTemperature, maxTemperature: $maxTemperature, minTempLowConfidence: $minTempLowConfidence, minTempHighConfidence: $minTempHighConfidence, maxTempLowConfidence: $maxTempLowConfidence, maxTempHighConfidence: $maxTempHighConfidence, precipitationProbMorning: $precipitationProbMorning, precipitationProbAfternoon: $precipitationProbAfternoon, weatherDescriptionMorning: $weatherDescriptionMorning, weatherDescriptionAfternoon: $weatherDescriptionAfternoon)';
}


}

/// @nodoc
abstract mixin class _$DailyMidTermWeatherCopyWith<$Res> implements $DailyMidTermWeatherCopyWith<$Res> {
  factory _$DailyMidTermWeatherCopyWith(_DailyMidTermWeather value, $Res Function(_DailyMidTermWeather) _then) = __$DailyMidTermWeatherCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int dayOffset, int minTemperature, int maxTemperature, int? minTempLowConfidence, int? minTempHighConfidence, int? maxTempLowConfidence, int? maxTempHighConfidence, int? precipitationProbMorning, int? precipitationProbAfternoon, String? weatherDescriptionMorning, String? weatherDescriptionAfternoon
});




}
/// @nodoc
class __$DailyMidTermWeatherCopyWithImpl<$Res>
    implements _$DailyMidTermWeatherCopyWith<$Res> {
  __$DailyMidTermWeatherCopyWithImpl(this._self, this._then);

  final _DailyMidTermWeather _self;
  final $Res Function(_DailyMidTermWeather) _then;

/// Create a copy of DailyMidTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? dayOffset = null,Object? minTemperature = null,Object? maxTemperature = null,Object? minTempLowConfidence = freezed,Object? minTempHighConfidence = freezed,Object? maxTempLowConfidence = freezed,Object? maxTempHighConfidence = freezed,Object? precipitationProbMorning = freezed,Object? precipitationProbAfternoon = freezed,Object? weatherDescriptionMorning = freezed,Object? weatherDescriptionAfternoon = freezed,}) {
  return _then(_DailyMidTermWeather(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,dayOffset: null == dayOffset ? _self.dayOffset : dayOffset // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTempLowConfidence: freezed == minTempLowConfidence ? _self.minTempLowConfidence : minTempLowConfidence // ignore: cast_nullable_to_non_nullable
as int?,minTempHighConfidence: freezed == minTempHighConfidence ? _self.minTempHighConfidence : minTempHighConfidence // ignore: cast_nullable_to_non_nullable
as int?,maxTempLowConfidence: freezed == maxTempLowConfidence ? _self.maxTempLowConfidence : maxTempLowConfidence // ignore: cast_nullable_to_non_nullable
as int?,maxTempHighConfidence: freezed == maxTempHighConfidence ? _self.maxTempHighConfidence : maxTempHighConfidence // ignore: cast_nullable_to_non_nullable
as int?,precipitationProbMorning: freezed == precipitationProbMorning ? _self.precipitationProbMorning : precipitationProbMorning // ignore: cast_nullable_to_non_nullable
as int?,precipitationProbAfternoon: freezed == precipitationProbAfternoon ? _self.precipitationProbAfternoon : precipitationProbAfternoon // ignore: cast_nullable_to_non_nullable
as int?,weatherDescriptionMorning: freezed == weatherDescriptionMorning ? _self.weatherDescriptionMorning : weatherDescriptionMorning // ignore: cast_nullable_to_non_nullable
as String?,weatherDescriptionAfternoon: freezed == weatherDescriptionAfternoon ? _self.weatherDescriptionAfternoon : weatherDescriptionAfternoon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
