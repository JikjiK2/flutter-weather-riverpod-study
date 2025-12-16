// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationStateModel {

 LocationPermissionStatus get permission; bool get isServiceEnabled; bool get isLoading;
/// Create a copy of LocationStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationStateModelCopyWith<LocationStateModel> get copyWith => _$LocationStateModelCopyWithImpl<LocationStateModel>(this as LocationStateModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationStateModel&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.isServiceEnabled, isServiceEnabled) || other.isServiceEnabled == isServiceEnabled)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,permission,isServiceEnabled,isLoading);

@override
String toString() {
  return 'LocationStateModel(permission: $permission, isServiceEnabled: $isServiceEnabled, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $LocationStateModelCopyWith<$Res>  {
  factory $LocationStateModelCopyWith(LocationStateModel value, $Res Function(LocationStateModel) _then) = _$LocationStateModelCopyWithImpl;
@useResult
$Res call({
 LocationPermissionStatus permission, bool isServiceEnabled, bool isLoading
});




}
/// @nodoc
class _$LocationStateModelCopyWithImpl<$Res>
    implements $LocationStateModelCopyWith<$Res> {
  _$LocationStateModelCopyWithImpl(this._self, this._then);

  final LocationStateModel _self;
  final $Res Function(LocationStateModel) _then;

/// Create a copy of LocationStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permission = null,Object? isServiceEnabled = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as LocationPermissionStatus,isServiceEnabled: null == isServiceEnabled ? _self.isServiceEnabled : isServiceEnabled // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationStateModel].
extension LocationStateModelPatterns on LocationStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationStateModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocationPermissionStatus permission,  bool isServiceEnabled,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationStateModel() when $default != null:
return $default(_that.permission,_that.isServiceEnabled,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocationPermissionStatus permission,  bool isServiceEnabled,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _LocationStateModel():
return $default(_that.permission,_that.isServiceEnabled,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocationPermissionStatus permission,  bool isServiceEnabled,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _LocationStateModel() when $default != null:
return $default(_that.permission,_that.isServiceEnabled,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _LocationStateModel implements LocationStateModel {
  const _LocationStateModel({required this.permission, required this.isServiceEnabled, this.isLoading = false});
  

@override final  LocationPermissionStatus permission;
@override final  bool isServiceEnabled;
@override@JsonKey() final  bool isLoading;

/// Create a copy of LocationStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationStateModelCopyWith<_LocationStateModel> get copyWith => __$LocationStateModelCopyWithImpl<_LocationStateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationStateModel&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.isServiceEnabled, isServiceEnabled) || other.isServiceEnabled == isServiceEnabled)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,permission,isServiceEnabled,isLoading);

@override
String toString() {
  return 'LocationStateModel(permission: $permission, isServiceEnabled: $isServiceEnabled, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$LocationStateModelCopyWith<$Res> implements $LocationStateModelCopyWith<$Res> {
  factory _$LocationStateModelCopyWith(_LocationStateModel value, $Res Function(_LocationStateModel) _then) = __$LocationStateModelCopyWithImpl;
@override @useResult
$Res call({
 LocationPermissionStatus permission, bool isServiceEnabled, bool isLoading
});




}
/// @nodoc
class __$LocationStateModelCopyWithImpl<$Res>
    implements _$LocationStateModelCopyWith<$Res> {
  __$LocationStateModelCopyWithImpl(this._self, this._then);

  final _LocationStateModel _self;
  final $Res Function(_LocationStateModel) _then;

/// Create a copy of LocationStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? isServiceEnabled = null,Object? isLoading = null,}) {
  return _then(_LocationStateModel(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as LocationPermissionStatus,isServiceEnabled: null == isServiceEnabled ? _self.isServiceEnabled : isServiceEnabled // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
