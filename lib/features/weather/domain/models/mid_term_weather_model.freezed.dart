// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mid_term_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MidTermWeather {

 String get regionId;// 예보 구역 코드 (예: 11B00000 또는 11B10101)
 String get regionName;// 예보 구역 이름 (예: 서울, 인천, 경기도)
 DateTime get publishedTime;// 예보 발표 시각 (tmFc)
 List<DailyMidTermWeather> get dailyForecasts;
/// Create a copy of MidTermWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MidTermWeatherCopyWith<MidTermWeather> get copyWith => _$MidTermWeatherCopyWithImpl<MidTermWeather>(this as MidTermWeather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MidTermWeather&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionName, regionName) || other.regionName == regionName)&&(identical(other.publishedTime, publishedTime) || other.publishedTime == publishedTime)&&const DeepCollectionEquality().equals(other.dailyForecasts, dailyForecasts));
}


@override
int get hashCode => Object.hash(runtimeType,regionId,regionName,publishedTime,const DeepCollectionEquality().hash(dailyForecasts));

@override
String toString() {
  return 'MidTermWeather(regionId: $regionId, regionName: $regionName, publishedTime: $publishedTime, dailyForecasts: $dailyForecasts)';
}


}

/// @nodoc
abstract mixin class $MidTermWeatherCopyWith<$Res>  {
  factory $MidTermWeatherCopyWith(MidTermWeather value, $Res Function(MidTermWeather) _then) = _$MidTermWeatherCopyWithImpl;
@useResult
$Res call({
 String regionId, String regionName, DateTime publishedTime, List<DailyMidTermWeather> dailyForecasts
});




}
/// @nodoc
class _$MidTermWeatherCopyWithImpl<$Res>
    implements $MidTermWeatherCopyWith<$Res> {
  _$MidTermWeatherCopyWithImpl(this._self, this._then);

  final MidTermWeather _self;
  final $Res Function(MidTermWeather) _then;

/// Create a copy of MidTermWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regionId = null,Object? regionName = null,Object? publishedTime = null,Object? dailyForecasts = null,}) {
  return _then(_self.copyWith(
regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,regionName: null == regionName ? _self.regionName : regionName // ignore: cast_nullable_to_non_nullable
as String,publishedTime: null == publishedTime ? _self.publishedTime : publishedTime // ignore: cast_nullable_to_non_nullable
as DateTime,dailyForecasts: null == dailyForecasts ? _self.dailyForecasts : dailyForecasts // ignore: cast_nullable_to_non_nullable
as List<DailyMidTermWeather>,
  ));
}

}


/// Adds pattern-matching-related methods to [MidTermWeather].
extension MidTermWeatherPatterns on MidTermWeather {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MidTermWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MidTermWeather() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MidTermWeather value)  $default,){
final _that = this;
switch (_that) {
case _MidTermWeather():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MidTermWeather value)?  $default,){
final _that = this;
switch (_that) {
case _MidTermWeather() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String regionId,  String regionName,  DateTime publishedTime,  List<DailyMidTermWeather> dailyForecasts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MidTermWeather() when $default != null:
return $default(_that.regionId,_that.regionName,_that.publishedTime,_that.dailyForecasts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String regionId,  String regionName,  DateTime publishedTime,  List<DailyMidTermWeather> dailyForecasts)  $default,) {final _that = this;
switch (_that) {
case _MidTermWeather():
return $default(_that.regionId,_that.regionName,_that.publishedTime,_that.dailyForecasts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String regionId,  String regionName,  DateTime publishedTime,  List<DailyMidTermWeather> dailyForecasts)?  $default,) {final _that = this;
switch (_that) {
case _MidTermWeather() when $default != null:
return $default(_that.regionId,_that.regionName,_that.publishedTime,_that.dailyForecasts);case _:
  return null;

}
}

}

/// @nodoc


class _MidTermWeather implements MidTermWeather {
  const _MidTermWeather({required this.regionId, required this.regionName, required this.publishedTime, required final  List<DailyMidTermWeather> dailyForecasts}): _dailyForecasts = dailyForecasts;
  

@override final  String regionId;
// 예보 구역 코드 (예: 11B00000 또는 11B10101)
@override final  String regionName;
// 예보 구역 이름 (예: 서울, 인천, 경기도)
@override final  DateTime publishedTime;
// 예보 발표 시각 (tmFc)
 final  List<DailyMidTermWeather> _dailyForecasts;
// 예보 발표 시각 (tmFc)
@override List<DailyMidTermWeather> get dailyForecasts {
  if (_dailyForecasts is EqualUnmodifiableListView) return _dailyForecasts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dailyForecasts);
}


/// Create a copy of MidTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MidTermWeatherCopyWith<_MidTermWeather> get copyWith => __$MidTermWeatherCopyWithImpl<_MidTermWeather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MidTermWeather&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionName, regionName) || other.regionName == regionName)&&(identical(other.publishedTime, publishedTime) || other.publishedTime == publishedTime)&&const DeepCollectionEquality().equals(other._dailyForecasts, _dailyForecasts));
}


@override
int get hashCode => Object.hash(runtimeType,regionId,regionName,publishedTime,const DeepCollectionEquality().hash(_dailyForecasts));

@override
String toString() {
  return 'MidTermWeather(regionId: $regionId, regionName: $regionName, publishedTime: $publishedTime, dailyForecasts: $dailyForecasts)';
}


}

/// @nodoc
abstract mixin class _$MidTermWeatherCopyWith<$Res> implements $MidTermWeatherCopyWith<$Res> {
  factory _$MidTermWeatherCopyWith(_MidTermWeather value, $Res Function(_MidTermWeather) _then) = __$MidTermWeatherCopyWithImpl;
@override @useResult
$Res call({
 String regionId, String regionName, DateTime publishedTime, List<DailyMidTermWeather> dailyForecasts
});




}
/// @nodoc
class __$MidTermWeatherCopyWithImpl<$Res>
    implements _$MidTermWeatherCopyWith<$Res> {
  __$MidTermWeatherCopyWithImpl(this._self, this._then);

  final _MidTermWeather _self;
  final $Res Function(_MidTermWeather) _then;

/// Create a copy of MidTermWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regionId = null,Object? regionName = null,Object? publishedTime = null,Object? dailyForecasts = null,}) {
  return _then(_MidTermWeather(
regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,regionName: null == regionName ? _self.regionName : regionName // ignore: cast_nullable_to_non_nullable
as String,publishedTime: null == publishedTime ? _self.publishedTime : publishedTime // ignore: cast_nullable_to_non_nullable
as DateTime,dailyForecasts: null == dailyForecasts ? _self._dailyForecasts : dailyForecasts // ignore: cast_nullable_to_non_nullable
as List<DailyMidTermWeather>,
  ));
}


}

// dart format on
