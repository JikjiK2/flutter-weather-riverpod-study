// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_ultra_srt_fcst_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaUltraSrtFcstApiResponse {

 KmaUltraSrtFcstResponse get response;
/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiResponseCopyWith<KmaUltraSrtFcstApiResponse> get copyWith => _$KmaUltraSrtFcstApiResponseCopyWithImpl<KmaUltraSrtFcstApiResponse>(this as KmaUltraSrtFcstApiResponse, _$identity);

  /// Serializes this KmaUltraSrtFcstApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaUltraSrtFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiResponseCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiResponseCopyWith(KmaUltraSrtFcstApiResponse value, $Res Function(KmaUltraSrtFcstApiResponse) _then) = _$KmaUltraSrtFcstApiResponseCopyWithImpl;
@useResult
$Res call({
 KmaUltraSrtFcstResponse response
});


$KmaUltraSrtFcstResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$KmaUltraSrtFcstApiResponseCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiResponseCopyWith<$Res> {
  _$KmaUltraSrtFcstApiResponseCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiResponse _self;
  final $Res Function(KmaUltraSrtFcstApiResponse) _then;

/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstResponse,
  ));
}
/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstResponseCopyWith<$Res> get response {
  
  return $KmaUltraSrtFcstResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiResponse].
extension KmaUltraSrtFcstApiResponsePatterns on KmaUltraSrtFcstApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KmaUltraSrtFcstResponse response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse() when $default != null:
return $default(_that.response);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KmaUltraSrtFcstResponse response)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse():
return $default(_that.response);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KmaUltraSrtFcstResponse response)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiResponse implements KmaUltraSrtFcstApiResponse {
  const _KmaUltraSrtFcstApiResponse({required this.response});
  factory _KmaUltraSrtFcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiResponseFromJson(json);

@override final  KmaUltraSrtFcstResponse response;

/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiResponseCopyWith<_KmaUltraSrtFcstApiResponse> get copyWith => __$KmaUltraSrtFcstApiResponseCopyWithImpl<_KmaUltraSrtFcstApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaUltraSrtFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiResponseCopyWith<$Res> implements $KmaUltraSrtFcstApiResponseCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiResponseCopyWith(_KmaUltraSrtFcstApiResponse value, $Res Function(_KmaUltraSrtFcstApiResponse) _then) = __$KmaUltraSrtFcstApiResponseCopyWithImpl;
@override @useResult
$Res call({
 KmaUltraSrtFcstResponse response
});


@override $KmaUltraSrtFcstResponseCopyWith<$Res> get response;

}
/// @nodoc
class __$KmaUltraSrtFcstApiResponseCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiResponseCopyWith<$Res> {
  __$KmaUltraSrtFcstApiResponseCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiResponse _self;
  final $Res Function(_KmaUltraSrtFcstApiResponse) _then;

/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_KmaUltraSrtFcstApiResponse(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstResponse,
  ));
}

/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstResponseCopyWith<$Res> get response {
  
  return $KmaUltraSrtFcstResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstResponse {

 KmaUltraSrtFcstHeader get header; KmaUltraSrtFcstBody get body;
/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstResponseCopyWith<KmaUltraSrtFcstResponse> get copyWith => _$KmaUltraSrtFcstResponseCopyWithImpl<KmaUltraSrtFcstResponse>(this as KmaUltraSrtFcstResponse, _$identity);

  /// Serializes this KmaUltraSrtFcstResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstResponse&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtFcstResponse(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstResponseCopyWith<$Res>  {
  factory $KmaUltraSrtFcstResponseCopyWith(KmaUltraSrtFcstResponse value, $Res Function(KmaUltraSrtFcstResponse) _then) = _$KmaUltraSrtFcstResponseCopyWithImpl;
@useResult
$Res call({
 KmaUltraSrtFcstHeader header, KmaUltraSrtFcstBody body
});


$KmaUltraSrtFcstHeaderCopyWith<$Res> get header;$KmaUltraSrtFcstBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaUltraSrtFcstResponseCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstResponseCopyWith<$Res> {
  _$KmaUltraSrtFcstResponseCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstResponse _self;
  final $Res Function(KmaUltraSrtFcstResponse) _then;

/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstBody,
  ));
}
/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtFcstHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtFcstBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstResponse].
extension KmaUltraSrtFcstResponsePatterns on KmaUltraSrtFcstResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KmaUltraSrtFcstHeader header,  KmaUltraSrtFcstBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse() when $default != null:
return $default(_that.header,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KmaUltraSrtFcstHeader header,  KmaUltraSrtFcstBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse():
return $default(_that.header,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KmaUltraSrtFcstHeader header,  KmaUltraSrtFcstBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstResponse() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstResponse implements KmaUltraSrtFcstResponse {
  const _KmaUltraSrtFcstResponse({required this.header, required this.body});
  factory _KmaUltraSrtFcstResponse.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstResponseFromJson(json);

@override final  KmaUltraSrtFcstHeader header;
@override final  KmaUltraSrtFcstBody body;

/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstResponseCopyWith<_KmaUltraSrtFcstResponse> get copyWith => __$KmaUltraSrtFcstResponseCopyWithImpl<_KmaUltraSrtFcstResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstResponse&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtFcstResponse(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstResponseCopyWith<$Res> implements $KmaUltraSrtFcstResponseCopyWith<$Res> {
  factory _$KmaUltraSrtFcstResponseCopyWith(_KmaUltraSrtFcstResponse value, $Res Function(_KmaUltraSrtFcstResponse) _then) = __$KmaUltraSrtFcstResponseCopyWithImpl;
@override @useResult
$Res call({
 KmaUltraSrtFcstHeader header, KmaUltraSrtFcstBody body
});


@override $KmaUltraSrtFcstHeaderCopyWith<$Res> get header;@override $KmaUltraSrtFcstBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaUltraSrtFcstResponseCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstResponseCopyWith<$Res> {
  __$KmaUltraSrtFcstResponseCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstResponse _self;
  final $Res Function(_KmaUltraSrtFcstResponse) _then;

/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaUltraSrtFcstResponse(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstBody,
  ));
}

/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtFcstHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtFcstResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtFcstBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstHeader {

 String get resultCode; String get resultMsg;
/// Create a copy of KmaUltraSrtFcstHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstHeaderCopyWith<KmaUltraSrtFcstHeader> get copyWith => _$KmaUltraSrtFcstHeaderCopyWithImpl<KmaUltraSrtFcstHeader>(this as KmaUltraSrtFcstHeader, _$identity);

  /// Serializes this KmaUltraSrtFcstHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtFcstHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstHeaderCopyWith<$Res>  {
  factory $KmaUltraSrtFcstHeaderCopyWith(KmaUltraSrtFcstHeader value, $Res Function(KmaUltraSrtFcstHeader) _then) = _$KmaUltraSrtFcstHeaderCopyWithImpl;
@useResult
$Res call({
 String resultCode, String resultMsg
});




}
/// @nodoc
class _$KmaUltraSrtFcstHeaderCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstHeaderCopyWith<$Res> {
  _$KmaUltraSrtFcstHeaderCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstHeader _self;
  final $Res Function(KmaUltraSrtFcstHeader) _then;

/// Create a copy of KmaUltraSrtFcstHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstHeader].
extension KmaUltraSrtFcstHeaderPatterns on KmaUltraSrtFcstHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resultCode,  String resultMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resultCode,  String resultMsg)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader():
return $default(_that.resultCode,_that.resultMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resultCode,  String resultMsg)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstHeader implements KmaUltraSrtFcstHeader {
  const _KmaUltraSrtFcstHeader({required this.resultCode, required this.resultMsg});
  factory _KmaUltraSrtFcstHeader.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstHeaderFromJson(json);

@override final  String resultCode;
@override final  String resultMsg;

/// Create a copy of KmaUltraSrtFcstHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstHeaderCopyWith<_KmaUltraSrtFcstHeader> get copyWith => __$KmaUltraSrtFcstHeaderCopyWithImpl<_KmaUltraSrtFcstHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtFcstHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstHeaderCopyWith<$Res> implements $KmaUltraSrtFcstHeaderCopyWith<$Res> {
  factory _$KmaUltraSrtFcstHeaderCopyWith(_KmaUltraSrtFcstHeader value, $Res Function(_KmaUltraSrtFcstHeader) _then) = __$KmaUltraSrtFcstHeaderCopyWithImpl;
@override @useResult
$Res call({
 String resultCode, String resultMsg
});




}
/// @nodoc
class __$KmaUltraSrtFcstHeaderCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstHeaderCopyWith<$Res> {
  __$KmaUltraSrtFcstHeaderCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstHeader _self;
  final $Res Function(_KmaUltraSrtFcstHeader) _then;

/// Create a copy of KmaUltraSrtFcstHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaUltraSrtFcstHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtFcstBody {

 String get dataType; KmaUltraSrtFcstItems get items; int get pageNo; int get numOfRows; int get totalCount;
/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstBodyCopyWith<KmaUltraSrtFcstBody> get copyWith => _$KmaUltraSrtFcstBodyCopyWithImpl<KmaUltraSrtFcstBody>(this as KmaUltraSrtFcstBody, _$identity);

  /// Serializes this KmaUltraSrtFcstBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtFcstBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstBodyCopyWith<$Res>  {
  factory $KmaUltraSrtFcstBodyCopyWith(KmaUltraSrtFcstBody value, $Res Function(KmaUltraSrtFcstBody) _then) = _$KmaUltraSrtFcstBodyCopyWithImpl;
@useResult
$Res call({
 String dataType, KmaUltraSrtFcstItems items, int pageNo, int numOfRows, int totalCount
});


$KmaUltraSrtFcstItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaUltraSrtFcstBodyCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstBodyCopyWith<$Res> {
  _$KmaUltraSrtFcstBodyCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstBody _self;
  final $Res Function(KmaUltraSrtFcstBody) _then;

/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtFcstItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstBody].
extension KmaUltraSrtFcstBodyPatterns on KmaUltraSrtFcstBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dataType,  KmaUltraSrtFcstItems items,  int pageNo,  int numOfRows,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dataType,  KmaUltraSrtFcstItems items,  int pageNo,  int numOfRows,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody():
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dataType,  KmaUltraSrtFcstItems items,  int pageNo,  int numOfRows,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstBody implements KmaUltraSrtFcstBody {
  const _KmaUltraSrtFcstBody({required this.dataType, required this.items, required this.pageNo, required this.numOfRows, required this.totalCount});
  factory _KmaUltraSrtFcstBody.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstBodyFromJson(json);

@override final  String dataType;
@override final  KmaUltraSrtFcstItems items;
@override final  int pageNo;
@override final  int numOfRows;
@override final  int totalCount;

/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstBodyCopyWith<_KmaUltraSrtFcstBody> get copyWith => __$KmaUltraSrtFcstBodyCopyWithImpl<_KmaUltraSrtFcstBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtFcstBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstBodyCopyWith<$Res> implements $KmaUltraSrtFcstBodyCopyWith<$Res> {
  factory _$KmaUltraSrtFcstBodyCopyWith(_KmaUltraSrtFcstBody value, $Res Function(_KmaUltraSrtFcstBody) _then) = __$KmaUltraSrtFcstBodyCopyWithImpl;
@override @useResult
$Res call({
 String dataType, KmaUltraSrtFcstItems items, int pageNo, int numOfRows, int totalCount
});


@override $KmaUltraSrtFcstItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaUltraSrtFcstBodyCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstBodyCopyWith<$Res> {
  __$KmaUltraSrtFcstBodyCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstBody _self;
  final $Res Function(_KmaUltraSrtFcstBody) _then;

/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaUltraSrtFcstBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaUltraSrtFcstBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtFcstItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstItems {

 List<KmaUltraSrtFcstItem> get item;
/// Create a copy of KmaUltraSrtFcstItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstItemsCopyWith<KmaUltraSrtFcstItems> get copyWith => _$KmaUltraSrtFcstItemsCopyWithImpl<KmaUltraSrtFcstItems>(this as KmaUltraSrtFcstItems, _$identity);

  /// Serializes this KmaUltraSrtFcstItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaUltraSrtFcstItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstItemsCopyWith<$Res>  {
  factory $KmaUltraSrtFcstItemsCopyWith(KmaUltraSrtFcstItems value, $Res Function(KmaUltraSrtFcstItems) _then) = _$KmaUltraSrtFcstItemsCopyWithImpl;
@useResult
$Res call({
 List<KmaUltraSrtFcstItem> item
});




}
/// @nodoc
class _$KmaUltraSrtFcstItemsCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstItemsCopyWith<$Res> {
  _$KmaUltraSrtFcstItemsCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstItems _self;
  final $Res Function(KmaUltraSrtFcstItems) _then;

/// Create a copy of KmaUltraSrtFcstItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtFcstItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstItems].
extension KmaUltraSrtFcstItemsPatterns on KmaUltraSrtFcstItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<KmaUltraSrtFcstItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems() when $default != null:
return $default(_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<KmaUltraSrtFcstItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems():
return $default(_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<KmaUltraSrtFcstItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstItems implements KmaUltraSrtFcstItems {
  const _KmaUltraSrtFcstItems({required final  List<KmaUltraSrtFcstItem> item}): _item = item;
  factory _KmaUltraSrtFcstItems.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstItemsFromJson(json);

 final  List<KmaUltraSrtFcstItem> _item;
@override List<KmaUltraSrtFcstItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaUltraSrtFcstItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstItemsCopyWith<_KmaUltraSrtFcstItems> get copyWith => __$KmaUltraSrtFcstItemsCopyWithImpl<_KmaUltraSrtFcstItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaUltraSrtFcstItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstItemsCopyWith<$Res> implements $KmaUltraSrtFcstItemsCopyWith<$Res> {
  factory _$KmaUltraSrtFcstItemsCopyWith(_KmaUltraSrtFcstItems value, $Res Function(_KmaUltraSrtFcstItems) _then) = __$KmaUltraSrtFcstItemsCopyWithImpl;
@override @useResult
$Res call({
 List<KmaUltraSrtFcstItem> item
});




}
/// @nodoc
class __$KmaUltraSrtFcstItemsCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstItemsCopyWith<$Res> {
  __$KmaUltraSrtFcstItemsCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstItems _self;
  final $Res Function(_KmaUltraSrtFcstItems) _then;

/// Create a copy of KmaUltraSrtFcstItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaUltraSrtFcstItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtFcstItem>,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtFcstItem {

 String get baseDate; String get baseTime; String get category; String get fcstDate; String get fcstTime; String get fcstValue; int get nx; int get ny;
/// Create a copy of KmaUltraSrtFcstItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstItemCopyWith<KmaUltraSrtFcstItem> get copyWith => _$KmaUltraSrtFcstItemCopyWithImpl<KmaUltraSrtFcstItem>(this as KmaUltraSrtFcstItem, _$identity);

  /// Serializes this KmaUltraSrtFcstItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtFcstItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstItemCopyWith<$Res>  {
  factory $KmaUltraSrtFcstItemCopyWith(KmaUltraSrtFcstItem value, $Res Function(KmaUltraSrtFcstItem) _then) = _$KmaUltraSrtFcstItemCopyWithImpl;
@useResult
$Res call({
 String baseDate, String baseTime, String category, String fcstDate, String fcstTime, String fcstValue, int nx, int ny
});




}
/// @nodoc
class _$KmaUltraSrtFcstItemCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstItemCopyWith<$Res> {
  _$KmaUltraSrtFcstItemCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstItem _self;
  final $Res Function(KmaUltraSrtFcstItem) _then;

/// Create a copy of KmaUltraSrtFcstItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? fcstDate = null,Object? fcstTime = null,Object? fcstValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_self.copyWith(
baseDate: null == baseDate ? _self.baseDate : baseDate // ignore: cast_nullable_to_non_nullable
as String,baseTime: null == baseTime ? _self.baseTime : baseTime // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,fcstDate: null == fcstDate ? _self.fcstDate : fcstDate // ignore: cast_nullable_to_non_nullable
as String,fcstTime: null == fcstTime ? _self.fcstTime : fcstTime // ignore: cast_nullable_to_non_nullable
as String,fcstValue: null == fcstValue ? _self.fcstValue : fcstValue // ignore: cast_nullable_to_non_nullable
as String,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstItem].
extension KmaUltraSrtFcstItemPatterns on KmaUltraSrtFcstItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseDate,  String baseTime,  String category,  String fcstDate,  String fcstTime,  String fcstValue,  int nx,  int ny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.fcstDate,_that.fcstTime,_that.fcstValue,_that.nx,_that.ny);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseDate,  String baseTime,  String category,  String fcstDate,  String fcstTime,  String fcstValue,  int nx,  int ny)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem():
return $default(_that.baseDate,_that.baseTime,_that.category,_that.fcstDate,_that.fcstTime,_that.fcstValue,_that.nx,_that.ny);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseDate,  String baseTime,  String category,  String fcstDate,  String fcstTime,  String fcstValue,  int nx,  int ny)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.fcstDate,_that.fcstTime,_that.fcstValue,_that.nx,_that.ny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstItem implements KmaUltraSrtFcstItem {
  const _KmaUltraSrtFcstItem({required this.baseDate, required this.baseTime, required this.category, required this.fcstDate, required this.fcstTime, required this.fcstValue, required this.nx, required this.ny});
  factory _KmaUltraSrtFcstItem.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstItemFromJson(json);

@override final  String baseDate;
@override final  String baseTime;
@override final  String category;
@override final  String fcstDate;
@override final  String fcstTime;
@override final  String fcstValue;
@override final  int nx;
@override final  int ny;

/// Create a copy of KmaUltraSrtFcstItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstItemCopyWith<_KmaUltraSrtFcstItem> get copyWith => __$KmaUltraSrtFcstItemCopyWithImpl<_KmaUltraSrtFcstItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtFcstItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstItemCopyWith<$Res> implements $KmaUltraSrtFcstItemCopyWith<$Res> {
  factory _$KmaUltraSrtFcstItemCopyWith(_KmaUltraSrtFcstItem value, $Res Function(_KmaUltraSrtFcstItem) _then) = __$KmaUltraSrtFcstItemCopyWithImpl;
@override @useResult
$Res call({
 String baseDate, String baseTime, String category, String fcstDate, String fcstTime, String fcstValue, int nx, int ny
});




}
/// @nodoc
class __$KmaUltraSrtFcstItemCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstItemCopyWith<$Res> {
  __$KmaUltraSrtFcstItemCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstItem _self;
  final $Res Function(_KmaUltraSrtFcstItem) _then;

/// Create a copy of KmaUltraSrtFcstItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? fcstDate = null,Object? fcstTime = null,Object? fcstValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_KmaUltraSrtFcstItem(
baseDate: null == baseDate ? _self.baseDate : baseDate // ignore: cast_nullable_to_non_nullable
as String,baseTime: null == baseTime ? _self.baseTime : baseTime // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,fcstDate: null == fcstDate ? _self.fcstDate : fcstDate // ignore: cast_nullable_to_non_nullable
as String,fcstTime: null == fcstTime ? _self.fcstTime : fcstTime // ignore: cast_nullable_to_non_nullable
as String,fcstValue: null == fcstValue ? _self.fcstValue : fcstValue // ignore: cast_nullable_to_non_nullable
as String,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
