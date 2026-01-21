// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Address {

 String? get country; String? get administrativeArea; String? get locality; String? get subLocality; String? get subLocalityLevel2; String? get subLocalityLevel3; String? get subLocalityLevel4; String? get formattedAddress; double? get latitude; double? get longitude;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.country, country) || other.country == country)&&(identical(other.administrativeArea, administrativeArea) || other.administrativeArea == administrativeArea)&&(identical(other.locality, locality) || other.locality == locality)&&(identical(other.subLocality, subLocality) || other.subLocality == subLocality)&&(identical(other.subLocalityLevel2, subLocalityLevel2) || other.subLocalityLevel2 == subLocalityLevel2)&&(identical(other.subLocalityLevel3, subLocalityLevel3) || other.subLocalityLevel3 == subLocalityLevel3)&&(identical(other.subLocalityLevel4, subLocalityLevel4) || other.subLocalityLevel4 == subLocalityLevel4)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,country,administrativeArea,locality,subLocality,subLocalityLevel2,subLocalityLevel3,subLocalityLevel4,formattedAddress,latitude,longitude);

@override
String toString() {
  return 'Address(country: $country, administrativeArea: $administrativeArea, locality: $locality, subLocality: $subLocality, subLocalityLevel2: $subLocalityLevel2, subLocalityLevel3: $subLocalityLevel3, subLocalityLevel4: $subLocalityLevel4, formattedAddress: $formattedAddress, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String? country, String? administrativeArea, String? locality, String? subLocality, String? subLocalityLevel2, String? subLocalityLevel3, String? subLocalityLevel4, String? formattedAddress, double? latitude, double? longitude
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? administrativeArea = freezed,Object? locality = freezed,Object? subLocality = freezed,Object? subLocalityLevel2 = freezed,Object? subLocalityLevel3 = freezed,Object? subLocalityLevel4 = freezed,Object? formattedAddress = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,administrativeArea: freezed == administrativeArea ? _self.administrativeArea : administrativeArea // ignore: cast_nullable_to_non_nullable
as String?,locality: freezed == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String?,subLocality: freezed == subLocality ? _self.subLocality : subLocality // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel2: freezed == subLocalityLevel2 ? _self.subLocalityLevel2 : subLocalityLevel2 // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel3: freezed == subLocalityLevel3 ? _self.subLocalityLevel3 : subLocalityLevel3 // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel4: freezed == subLocalityLevel4 ? _self.subLocalityLevel4 : subLocalityLevel4 // ignore: cast_nullable_to_non_nullable
as String?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? country,  String? administrativeArea,  String? locality,  String? subLocality,  String? subLocalityLevel2,  String? subLocalityLevel3,  String? subLocalityLevel4,  String? formattedAddress,  double? latitude,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.country,_that.administrativeArea,_that.locality,_that.subLocality,_that.subLocalityLevel2,_that.subLocalityLevel3,_that.subLocalityLevel4,_that.formattedAddress,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? country,  String? administrativeArea,  String? locality,  String? subLocality,  String? subLocalityLevel2,  String? subLocalityLevel3,  String? subLocalityLevel4,  String? formattedAddress,  double? latitude,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.country,_that.administrativeArea,_that.locality,_that.subLocality,_that.subLocalityLevel2,_that.subLocalityLevel3,_that.subLocalityLevel4,_that.formattedAddress,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? country,  String? administrativeArea,  String? locality,  String? subLocality,  String? subLocalityLevel2,  String? subLocalityLevel3,  String? subLocalityLevel4,  String? formattedAddress,  double? latitude,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.country,_that.administrativeArea,_that.locality,_that.subLocality,_that.subLocalityLevel2,_that.subLocalityLevel3,_that.subLocalityLevel4,_that.formattedAddress,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _Address implements Address {
  const _Address({this.country, this.administrativeArea, this.locality, this.subLocality, this.subLocalityLevel2, this.subLocalityLevel3, this.subLocalityLevel4, this.formattedAddress, this.latitude, this.longitude});
  

@override final  String? country;
@override final  String? administrativeArea;
@override final  String? locality;
@override final  String? subLocality;
@override final  String? subLocalityLevel2;
@override final  String? subLocalityLevel3;
@override final  String? subLocalityLevel4;
@override final  String? formattedAddress;
@override final  double? latitude;
@override final  double? longitude;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.country, country) || other.country == country)&&(identical(other.administrativeArea, administrativeArea) || other.administrativeArea == administrativeArea)&&(identical(other.locality, locality) || other.locality == locality)&&(identical(other.subLocality, subLocality) || other.subLocality == subLocality)&&(identical(other.subLocalityLevel2, subLocalityLevel2) || other.subLocalityLevel2 == subLocalityLevel2)&&(identical(other.subLocalityLevel3, subLocalityLevel3) || other.subLocalityLevel3 == subLocalityLevel3)&&(identical(other.subLocalityLevel4, subLocalityLevel4) || other.subLocalityLevel4 == subLocalityLevel4)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,country,administrativeArea,locality,subLocality,subLocalityLevel2,subLocalityLevel3,subLocalityLevel4,formattedAddress,latitude,longitude);

@override
String toString() {
  return 'Address(country: $country, administrativeArea: $administrativeArea, locality: $locality, subLocality: $subLocality, subLocalityLevel2: $subLocalityLevel2, subLocalityLevel3: $subLocalityLevel3, subLocalityLevel4: $subLocalityLevel4, formattedAddress: $formattedAddress, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? administrativeArea, String? locality, String? subLocality, String? subLocalityLevel2, String? subLocalityLevel3, String? subLocalityLevel4, String? formattedAddress, double? latitude, double? longitude
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? administrativeArea = freezed,Object? locality = freezed,Object? subLocality = freezed,Object? subLocalityLevel2 = freezed,Object? subLocalityLevel3 = freezed,Object? subLocalityLevel4 = freezed,Object? formattedAddress = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_Address(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,administrativeArea: freezed == administrativeArea ? _self.administrativeArea : administrativeArea // ignore: cast_nullable_to_non_nullable
as String?,locality: freezed == locality ? _self.locality : locality // ignore: cast_nullable_to_non_nullable
as String?,subLocality: freezed == subLocality ? _self.subLocality : subLocality // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel2: freezed == subLocalityLevel2 ? _self.subLocalityLevel2 : subLocalityLevel2 // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel3: freezed == subLocalityLevel3 ? _self.subLocalityLevel3 : subLocalityLevel3 // ignore: cast_nullable_to_non_nullable
as String?,subLocalityLevel4: freezed == subLocalityLevel4 ? _self.subLocalityLevel4 : subLocalityLevel4 // ignore: cast_nullable_to_non_nullable
as String?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
