// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mid_term_region_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MidTermRegion {

 String get region; String get city; String get regId; bool get isCommunicated;
/// Create a copy of MidTermRegion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MidTermRegionCopyWith<MidTermRegion> get copyWith => _$MidTermRegionCopyWithImpl<MidTermRegion>(this as MidTermRegion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MidTermRegion&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.isCommunicated, isCommunicated) || other.isCommunicated == isCommunicated));
}


@override
int get hashCode => Object.hash(runtimeType,region,city,regId,isCommunicated);

@override
String toString() {
  return 'MidTermRegion(region: $region, city: $city, regId: $regId, isCommunicated: $isCommunicated)';
}


}

/// @nodoc
abstract mixin class $MidTermRegionCopyWith<$Res>  {
  factory $MidTermRegionCopyWith(MidTermRegion value, $Res Function(MidTermRegion) _then) = _$MidTermRegionCopyWithImpl;
@useResult
$Res call({
 String region, String city, String regId, bool isCommunicated
});




}
/// @nodoc
class _$MidTermRegionCopyWithImpl<$Res>
    implements $MidTermRegionCopyWith<$Res> {
  _$MidTermRegionCopyWithImpl(this._self, this._then);

  final MidTermRegion _self;
  final $Res Function(MidTermRegion) _then;

/// Create a copy of MidTermRegion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? region = null,Object? city = null,Object? regId = null,Object? isCommunicated = null,}) {
  return _then(_self.copyWith(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,isCommunicated: null == isCommunicated ? _self.isCommunicated : isCommunicated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MidTermRegion].
extension MidTermRegionPatterns on MidTermRegion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MidTermRegion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MidTermRegion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MidTermRegion value)  $default,){
final _that = this;
switch (_that) {
case _MidTermRegion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MidTermRegion value)?  $default,){
final _that = this;
switch (_that) {
case _MidTermRegion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String region,  String city,  String regId,  bool isCommunicated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MidTermRegion() when $default != null:
return $default(_that.region,_that.city,_that.regId,_that.isCommunicated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String region,  String city,  String regId,  bool isCommunicated)  $default,) {final _that = this;
switch (_that) {
case _MidTermRegion():
return $default(_that.region,_that.city,_that.regId,_that.isCommunicated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String region,  String city,  String regId,  bool isCommunicated)?  $default,) {final _that = this;
switch (_that) {
case _MidTermRegion() when $default != null:
return $default(_that.region,_that.city,_that.regId,_that.isCommunicated);case _:
  return null;

}
}

}

/// @nodoc


class _MidTermRegion implements MidTermRegion {
  const _MidTermRegion({required this.region, required this.city, required this.regId, this.isCommunicated = false});
  

@override final  String region;
@override final  String city;
@override final  String regId;
@override@JsonKey() final  bool isCommunicated;

/// Create a copy of MidTermRegion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MidTermRegionCopyWith<_MidTermRegion> get copyWith => __$MidTermRegionCopyWithImpl<_MidTermRegion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MidTermRegion&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.isCommunicated, isCommunicated) || other.isCommunicated == isCommunicated));
}


@override
int get hashCode => Object.hash(runtimeType,region,city,regId,isCommunicated);

@override
String toString() {
  return 'MidTermRegion(region: $region, city: $city, regId: $regId, isCommunicated: $isCommunicated)';
}


}

/// @nodoc
abstract mixin class _$MidTermRegionCopyWith<$Res> implements $MidTermRegionCopyWith<$Res> {
  factory _$MidTermRegionCopyWith(_MidTermRegion value, $Res Function(_MidTermRegion) _then) = __$MidTermRegionCopyWithImpl;
@override @useResult
$Res call({
 String region, String city, String regId, bool isCommunicated
});




}
/// @nodoc
class __$MidTermRegionCopyWithImpl<$Res>
    implements _$MidTermRegionCopyWith<$Res> {
  __$MidTermRegionCopyWithImpl(this._self, this._then);

  final _MidTermRegion _self;
  final $Res Function(_MidTermRegion) _then;

/// Create a copy of MidTermRegion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? region = null,Object? city = null,Object? regId = null,Object? isCommunicated = null,}) {
  return _then(_MidTermRegion(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,isCommunicated: null == isCommunicated ? _self.isCommunicated : isCommunicated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
