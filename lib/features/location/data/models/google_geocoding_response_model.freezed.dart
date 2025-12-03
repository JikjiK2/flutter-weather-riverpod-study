// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_geocoding_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleGeocodingResponse {

@JsonKey(name: 'results') List<GeocodingResult> get results;@JsonKey(name: 'status') String get status;
/// Create a copy of GoogleGeocodingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleGeocodingResponseCopyWith<GoogleGeocodingResponse> get copyWith => _$GoogleGeocodingResponseCopyWithImpl<GoogleGeocodingResponse>(this as GoogleGeocodingResponse, _$identity);

  /// Serializes this GoogleGeocodingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleGeocodingResponse&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),status);

@override
String toString() {
  return 'GoogleGeocodingResponse(results: $results, status: $status)';
}


}

/// @nodoc
abstract mixin class $GoogleGeocodingResponseCopyWith<$Res>  {
  factory $GoogleGeocodingResponseCopyWith(GoogleGeocodingResponse value, $Res Function(GoogleGeocodingResponse) _then) = _$GoogleGeocodingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'results') List<GeocodingResult> results,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class _$GoogleGeocodingResponseCopyWithImpl<$Res>
    implements $GoogleGeocodingResponseCopyWith<$Res> {
  _$GoogleGeocodingResponseCopyWithImpl(this._self, this._then);

  final GoogleGeocodingResponse _self;
  final $Res Function(GoogleGeocodingResponse) _then;

/// Create a copy of GoogleGeocodingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? status = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<GeocodingResult>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleGeocodingResponse].
extension GoogleGeocodingResponsePatterns on GoogleGeocodingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleGeocodingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleGeocodingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleGeocodingResponse value)  $default,){
final _that = this;
switch (_that) {
case _GoogleGeocodingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleGeocodingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleGeocodingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'results')  List<GeocodingResult> results, @JsonKey(name: 'status')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleGeocodingResponse() when $default != null:
return $default(_that.results,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'results')  List<GeocodingResult> results, @JsonKey(name: 'status')  String status)  $default,) {final _that = this;
switch (_that) {
case _GoogleGeocodingResponse():
return $default(_that.results,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'results')  List<GeocodingResult> results, @JsonKey(name: 'status')  String status)?  $default,) {final _that = this;
switch (_that) {
case _GoogleGeocodingResponse() when $default != null:
return $default(_that.results,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleGeocodingResponse implements GoogleGeocodingResponse {
  const _GoogleGeocodingResponse({@JsonKey(name: 'results') required final  List<GeocodingResult> results, @JsonKey(name: 'status') required this.status}): _results = results;
  factory _GoogleGeocodingResponse.fromJson(Map<String, dynamic> json) => _$GoogleGeocodingResponseFromJson(json);

 final  List<GeocodingResult> _results;
@override@JsonKey(name: 'results') List<GeocodingResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'status') final  String status;

/// Create a copy of GoogleGeocodingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleGeocodingResponseCopyWith<_GoogleGeocodingResponse> get copyWith => __$GoogleGeocodingResponseCopyWithImpl<_GoogleGeocodingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleGeocodingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleGeocodingResponse&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),status);

@override
String toString() {
  return 'GoogleGeocodingResponse(results: $results, status: $status)';
}


}

/// @nodoc
abstract mixin class _$GoogleGeocodingResponseCopyWith<$Res> implements $GoogleGeocodingResponseCopyWith<$Res> {
  factory _$GoogleGeocodingResponseCopyWith(_GoogleGeocodingResponse value, $Res Function(_GoogleGeocodingResponse) _then) = __$GoogleGeocodingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'results') List<GeocodingResult> results,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class __$GoogleGeocodingResponseCopyWithImpl<$Res>
    implements _$GoogleGeocodingResponseCopyWith<$Res> {
  __$GoogleGeocodingResponseCopyWithImpl(this._self, this._then);

  final _GoogleGeocodingResponse _self;
  final $Res Function(_GoogleGeocodingResponse) _then;

/// Create a copy of GoogleGeocodingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? status = null,}) {
  return _then(_GoogleGeocodingResponse(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<GeocodingResult>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GeocodingResult {

@JsonKey(name: 'address_components') List<AddressComponent> get addressComponents;@JsonKey(name: 'formatted_address') String get formattedAddress;
/// Create a copy of GeocodingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeocodingResultCopyWith<GeocodingResult> get copyWith => _$GeocodingResultCopyWithImpl<GeocodingResult>(this as GeocodingResult, _$identity);

  /// Serializes this GeocodingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeocodingResult&&const DeepCollectionEquality().equals(other.addressComponents, addressComponents)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(addressComponents),formattedAddress);

@override
String toString() {
  return 'GeocodingResult(addressComponents: $addressComponents, formattedAddress: $formattedAddress)';
}


}

/// @nodoc
abstract mixin class $GeocodingResultCopyWith<$Res>  {
  factory $GeocodingResultCopyWith(GeocodingResult value, $Res Function(GeocodingResult) _then) = _$GeocodingResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_components') List<AddressComponent> addressComponents,@JsonKey(name: 'formatted_address') String formattedAddress
});




}
/// @nodoc
class _$GeocodingResultCopyWithImpl<$Res>
    implements $GeocodingResultCopyWith<$Res> {
  _$GeocodingResultCopyWithImpl(this._self, this._then);

  final GeocodingResult _self;
  final $Res Function(GeocodingResult) _then;

/// Create a copy of GeocodingResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressComponents = null,Object? formattedAddress = null,}) {
  return _then(_self.copyWith(
addressComponents: null == addressComponents ? _self.addressComponents : addressComponents // ignore: cast_nullable_to_non_nullable
as List<AddressComponent>,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GeocodingResult].
extension GeocodingResultPatterns on GeocodingResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeocodingResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeocodingResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeocodingResult value)  $default,){
final _that = this;
switch (_that) {
case _GeocodingResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeocodingResult value)?  $default,){
final _that = this;
switch (_that) {
case _GeocodingResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_components')  List<AddressComponent> addressComponents, @JsonKey(name: 'formatted_address')  String formattedAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeocodingResult() when $default != null:
return $default(_that.addressComponents,_that.formattedAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_components')  List<AddressComponent> addressComponents, @JsonKey(name: 'formatted_address')  String formattedAddress)  $default,) {final _that = this;
switch (_that) {
case _GeocodingResult():
return $default(_that.addressComponents,_that.formattedAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_components')  List<AddressComponent> addressComponents, @JsonKey(name: 'formatted_address')  String formattedAddress)?  $default,) {final _that = this;
switch (_that) {
case _GeocodingResult() when $default != null:
return $default(_that.addressComponents,_that.formattedAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeocodingResult implements GeocodingResult {
  const _GeocodingResult({@JsonKey(name: 'address_components') required final  List<AddressComponent> addressComponents, @JsonKey(name: 'formatted_address') required this.formattedAddress}): _addressComponents = addressComponents;
  factory _GeocodingResult.fromJson(Map<String, dynamic> json) => _$GeocodingResultFromJson(json);

 final  List<AddressComponent> _addressComponents;
@override@JsonKey(name: 'address_components') List<AddressComponent> get addressComponents {
  if (_addressComponents is EqualUnmodifiableListView) return _addressComponents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addressComponents);
}

@override@JsonKey(name: 'formatted_address') final  String formattedAddress;

/// Create a copy of GeocodingResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeocodingResultCopyWith<_GeocodingResult> get copyWith => __$GeocodingResultCopyWithImpl<_GeocodingResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeocodingResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeocodingResult&&const DeepCollectionEquality().equals(other._addressComponents, _addressComponents)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_addressComponents),formattedAddress);

@override
String toString() {
  return 'GeocodingResult(addressComponents: $addressComponents, formattedAddress: $formattedAddress)';
}


}

/// @nodoc
abstract mixin class _$GeocodingResultCopyWith<$Res> implements $GeocodingResultCopyWith<$Res> {
  factory _$GeocodingResultCopyWith(_GeocodingResult value, $Res Function(_GeocodingResult) _then) = __$GeocodingResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_components') List<AddressComponent> addressComponents,@JsonKey(name: 'formatted_address') String formattedAddress
});




}
/// @nodoc
class __$GeocodingResultCopyWithImpl<$Res>
    implements _$GeocodingResultCopyWith<$Res> {
  __$GeocodingResultCopyWithImpl(this._self, this._then);

  final _GeocodingResult _self;
  final $Res Function(_GeocodingResult) _then;

/// Create a copy of GeocodingResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressComponents = null,Object? formattedAddress = null,}) {
  return _then(_GeocodingResult(
addressComponents: null == addressComponents ? _self._addressComponents : addressComponents // ignore: cast_nullable_to_non_nullable
as List<AddressComponent>,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AddressComponent {

@JsonKey(name: 'long_name') String get longName;@JsonKey(name: 'short_name') String get shortName; List<String> get types;
/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressComponentCopyWith<AddressComponent> get copyWith => _$AddressComponentCopyWithImpl<AddressComponent>(this as AddressComponent, _$identity);

  /// Serializes this AddressComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressComponent&&(identical(other.longName, longName) || other.longName == longName)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,longName,shortName,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
}


}

/// @nodoc
abstract mixin class $AddressComponentCopyWith<$Res>  {
  factory $AddressComponentCopyWith(AddressComponent value, $Res Function(AddressComponent) _then) = _$AddressComponentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'long_name') String longName,@JsonKey(name: 'short_name') String shortName, List<String> types
});




}
/// @nodoc
class _$AddressComponentCopyWithImpl<$Res>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._self, this._then);

  final AddressComponent _self;
  final $Res Function(AddressComponent) _then;

/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? longName = null,Object? shortName = null,Object? types = null,}) {
  return _then(_self.copyWith(
longName: null == longName ? _self.longName : longName // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressComponent].
extension AddressComponentPatterns on AddressComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressComponent value)  $default,){
final _that = this;
switch (_that) {
case _AddressComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressComponent value)?  $default,){
final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'long_name')  String longName, @JsonKey(name: 'short_name')  String shortName,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
return $default(_that.longName,_that.shortName,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'long_name')  String longName, @JsonKey(name: 'short_name')  String shortName,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _AddressComponent():
return $default(_that.longName,_that.shortName,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'long_name')  String longName, @JsonKey(name: 'short_name')  String shortName,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _AddressComponent() when $default != null:
return $default(_that.longName,_that.shortName,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressComponent implements AddressComponent {
  const _AddressComponent({@JsonKey(name: 'long_name') required this.longName, @JsonKey(name: 'short_name') required this.shortName, required final  List<String> types}): _types = types;
  factory _AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);

@override@JsonKey(name: 'long_name') final  String longName;
@override@JsonKey(name: 'short_name') final  String shortName;
 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressComponentCopyWith<_AddressComponent> get copyWith => __$AddressComponentCopyWithImpl<_AddressComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressComponentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressComponent&&(identical(other.longName, longName) || other.longName == longName)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,longName,shortName,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
}


}

/// @nodoc
abstract mixin class _$AddressComponentCopyWith<$Res> implements $AddressComponentCopyWith<$Res> {
  factory _$AddressComponentCopyWith(_AddressComponent value, $Res Function(_AddressComponent) _then) = __$AddressComponentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'long_name') String longName,@JsonKey(name: 'short_name') String shortName, List<String> types
});




}
/// @nodoc
class __$AddressComponentCopyWithImpl<$Res>
    implements _$AddressComponentCopyWith<$Res> {
  __$AddressComponentCopyWithImpl(this._self, this._then);

  final _AddressComponent _self;
  final $Res Function(_AddressComponent) _then;

/// Create a copy of AddressComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? longName = null,Object? shortName = null,Object? types = null,}) {
  return _then(_AddressComponent(
longName: null == longName ? _self.longName : longName // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
