// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_mid_land_fcst_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaMidLandFcstApiResponse {

@JsonKey(name: 'response') KmaMidLandFcstApiResult get response;
/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiResponseCopyWith<KmaMidLandFcstApiResponse> get copyWith => _$KmaMidLandFcstApiResponseCopyWithImpl<KmaMidLandFcstApiResponse>(this as KmaMidLandFcstApiResponse, _$identity);

  /// Serializes this KmaMidLandFcstApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidLandFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiResponseCopyWith<$Res>  {
  factory $KmaMidLandFcstApiResponseCopyWith(KmaMidLandFcstApiResponse value, $Res Function(KmaMidLandFcstApiResponse) _then) = _$KmaMidLandFcstApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') KmaMidLandFcstApiResult response
});


$KmaMidLandFcstApiResultCopyWith<$Res> get response;

}
/// @nodoc
class _$KmaMidLandFcstApiResponseCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiResponseCopyWith<$Res> {
  _$KmaMidLandFcstApiResponseCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiResponse _self;
  final $Res Function(KmaMidLandFcstApiResponse) _then;

/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiResult,
  ));
}
/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiResultCopyWith<$Res> get response {
  
  return $KmaMidLandFcstApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiResponse].
extension KmaMidLandFcstApiResponsePatterns on KmaMidLandFcstApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidLandFcstApiResult response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidLandFcstApiResult response)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaMidLandFcstApiResult response)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResponse() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiResponse implements KmaMidLandFcstApiResponse {
  const _KmaMidLandFcstApiResponse({@JsonKey(name: 'response') required this.response});
  factory _KmaMidLandFcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaMidLandFcstApiResult response;

/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiResponseCopyWith<_KmaMidLandFcstApiResponse> get copyWith => __$KmaMidLandFcstApiResponseCopyWithImpl<_KmaMidLandFcstApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidLandFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiResponseCopyWith<$Res> implements $KmaMidLandFcstApiResponseCopyWith<$Res> {
  factory _$KmaMidLandFcstApiResponseCopyWith(_KmaMidLandFcstApiResponse value, $Res Function(_KmaMidLandFcstApiResponse) _then) = __$KmaMidLandFcstApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') KmaMidLandFcstApiResult response
});


@override $KmaMidLandFcstApiResultCopyWith<$Res> get response;

}
/// @nodoc
class __$KmaMidLandFcstApiResponseCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiResponseCopyWith<$Res> {
  __$KmaMidLandFcstApiResponseCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiResponse _self;
  final $Res Function(_KmaMidLandFcstApiResponse) _then;

/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_KmaMidLandFcstApiResponse(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiResult,
  ));
}

/// Create a copy of KmaMidLandFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiResultCopyWith<$Res> get response {
  
  return $KmaMidLandFcstApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$KmaMidLandFcstApiResult {

@JsonKey(name: 'header') KmaMidLandFcstApiHeader get header;@JsonKey(name: 'body') KmaMidLandFcstApiBody get body;
/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiResultCopyWith<KmaMidLandFcstApiResult> get copyWith => _$KmaMidLandFcstApiResultCopyWithImpl<KmaMidLandFcstApiResult>(this as KmaMidLandFcstApiResult, _$identity);

  /// Serializes this KmaMidLandFcstApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidLandFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiResultCopyWith<$Res>  {
  factory $KmaMidLandFcstApiResultCopyWith(KmaMidLandFcstApiResult value, $Res Function(KmaMidLandFcstApiResult) _then) = _$KmaMidLandFcstApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaMidLandFcstApiHeader header,@JsonKey(name: 'body') KmaMidLandFcstApiBody body
});


$KmaMidLandFcstApiHeaderCopyWith<$Res> get header;$KmaMidLandFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaMidLandFcstApiResultCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiResultCopyWith<$Res> {
  _$KmaMidLandFcstApiResultCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiResult _self;
  final $Res Function(KmaMidLandFcstApiResult) _then;

/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiBody,
  ));
}
/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidLandFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaMidLandFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiResult].
extension KmaMidLandFcstApiResultPatterns on KmaMidLandFcstApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidLandFcstApiHeader header, @JsonKey(name: 'body')  KmaMidLandFcstApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidLandFcstApiHeader header, @JsonKey(name: 'body')  KmaMidLandFcstApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaMidLandFcstApiHeader header, @JsonKey(name: 'body')  KmaMidLandFcstApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiResult implements KmaMidLandFcstApiResult {
  const _KmaMidLandFcstApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaMidLandFcstApiResult.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaMidLandFcstApiHeader header;
@override@JsonKey(name: 'body') final  KmaMidLandFcstApiBody body;

/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiResultCopyWith<_KmaMidLandFcstApiResult> get copyWith => __$KmaMidLandFcstApiResultCopyWithImpl<_KmaMidLandFcstApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidLandFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiResultCopyWith<$Res> implements $KmaMidLandFcstApiResultCopyWith<$Res> {
  factory _$KmaMidLandFcstApiResultCopyWith(_KmaMidLandFcstApiResult value, $Res Function(_KmaMidLandFcstApiResult) _then) = __$KmaMidLandFcstApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaMidLandFcstApiHeader header,@JsonKey(name: 'body') KmaMidLandFcstApiBody body
});


@override $KmaMidLandFcstApiHeaderCopyWith<$Res> get header;@override $KmaMidLandFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaMidLandFcstApiResultCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiResultCopyWith<$Res> {
  __$KmaMidLandFcstApiResultCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiResult _self;
  final $Res Function(_KmaMidLandFcstApiResult) _then;

/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaMidLandFcstApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiBody,
  ));
}

/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidLandFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidLandFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaMidLandFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaMidLandFcstApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaMidLandFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiHeaderCopyWith<KmaMidLandFcstApiHeader> get copyWith => _$KmaMidLandFcstApiHeaderCopyWithImpl<KmaMidLandFcstApiHeader>(this as KmaMidLandFcstApiHeader, _$identity);

  /// Serializes this KmaMidLandFcstApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidLandFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiHeaderCopyWith<$Res>  {
  factory $KmaMidLandFcstApiHeaderCopyWith(KmaMidLandFcstApiHeader value, $Res Function(KmaMidLandFcstApiHeader) _then) = _$KmaMidLandFcstApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaMidLandFcstApiHeaderCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiHeaderCopyWith<$Res> {
  _$KmaMidLandFcstApiHeaderCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiHeader _self;
  final $Res Function(KmaMidLandFcstApiHeader) _then;

/// Create a copy of KmaMidLandFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiHeader].
extension KmaMidLandFcstApiHeaderPatterns on KmaMidLandFcstApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'resultCode')  String resultCode, @JsonKey(name: 'resultMsg')  String resultMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'resultCode')  String resultCode, @JsonKey(name: 'resultMsg')  String resultMsg)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'resultCode')  String resultCode, @JsonKey(name: 'resultMsg')  String resultMsg)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiHeader implements KmaMidLandFcstApiHeader {
  const _KmaMidLandFcstApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaMidLandFcstApiHeader.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaMidLandFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiHeaderCopyWith<_KmaMidLandFcstApiHeader> get copyWith => __$KmaMidLandFcstApiHeaderCopyWithImpl<_KmaMidLandFcstApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidLandFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiHeaderCopyWith<$Res> implements $KmaMidLandFcstApiHeaderCopyWith<$Res> {
  factory _$KmaMidLandFcstApiHeaderCopyWith(_KmaMidLandFcstApiHeader value, $Res Function(_KmaMidLandFcstApiHeader) _then) = __$KmaMidLandFcstApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaMidLandFcstApiHeaderCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiHeaderCopyWith<$Res> {
  __$KmaMidLandFcstApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiHeader _self;
  final $Res Function(_KmaMidLandFcstApiHeader) _then;

/// Create a copy of KmaMidLandFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaMidLandFcstApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaMidLandFcstApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaMidLandFcstApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiBodyCopyWith<KmaMidLandFcstApiBody> get copyWith => _$KmaMidLandFcstApiBodyCopyWithImpl<KmaMidLandFcstApiBody>(this as KmaMidLandFcstApiBody, _$identity);

  /// Serializes this KmaMidLandFcstApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidLandFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiBodyCopyWith<$Res>  {
  factory $KmaMidLandFcstApiBodyCopyWith(KmaMidLandFcstApiBody value, $Res Function(KmaMidLandFcstApiBody) _then) = _$KmaMidLandFcstApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaMidLandFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaMidLandFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaMidLandFcstApiBodyCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiBodyCopyWith<$Res> {
  _$KmaMidLandFcstApiBodyCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiBody _self;
  final $Res Function(KmaMidLandFcstApiBody) _then;

/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaMidLandFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiBody].
extension KmaMidLandFcstApiBodyPatterns on KmaMidLandFcstApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidLandFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidLandFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidLandFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiBody implements KmaMidLandFcstApiBody {
  const _KmaMidLandFcstApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _KmaMidLandFcstApiBody.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaMidLandFcstApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiBodyCopyWith<_KmaMidLandFcstApiBody> get copyWith => __$KmaMidLandFcstApiBodyCopyWithImpl<_KmaMidLandFcstApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidLandFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiBodyCopyWith<$Res> implements $KmaMidLandFcstApiBodyCopyWith<$Res> {
  factory _$KmaMidLandFcstApiBodyCopyWith(_KmaMidLandFcstApiBody value, $Res Function(_KmaMidLandFcstApiBody) _then) = __$KmaMidLandFcstApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaMidLandFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaMidLandFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaMidLandFcstApiBodyCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiBodyCopyWith<$Res> {
  __$KmaMidLandFcstApiBodyCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiBody _self;
  final $Res Function(_KmaMidLandFcstApiBody) _then;

/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaMidLandFcstApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaMidLandFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaMidLandFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaMidLandFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaMidLandFcstApiItems {

@JsonKey(name: 'item') List<KmaMidLandFcstApiItem> get item;
/// Create a copy of KmaMidLandFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiItemsCopyWith<KmaMidLandFcstApiItems> get copyWith => _$KmaMidLandFcstApiItemsCopyWithImpl<KmaMidLandFcstApiItems>(this as KmaMidLandFcstApiItems, _$identity);

  /// Serializes this KmaMidLandFcstApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaMidLandFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiItemsCopyWith<$Res>  {
  factory $KmaMidLandFcstApiItemsCopyWith(KmaMidLandFcstApiItems value, $Res Function(KmaMidLandFcstApiItems) _then) = _$KmaMidLandFcstApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidLandFcstApiItem> item
});




}
/// @nodoc
class _$KmaMidLandFcstApiItemsCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiItemsCopyWith<$Res> {
  _$KmaMidLandFcstApiItemsCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiItems _self;
  final $Res Function(KmaMidLandFcstApiItems) _then;

/// Create a copy of KmaMidLandFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidLandFcstApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiItems].
extension KmaMidLandFcstApiItemsPatterns on KmaMidLandFcstApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidLandFcstApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidLandFcstApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaMidLandFcstApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiItems implements KmaMidLandFcstApiItems {
  const _KmaMidLandFcstApiItems({@JsonKey(name: 'item') required final  List<KmaMidLandFcstApiItem> item}): _item = item;
  factory _KmaMidLandFcstApiItems.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiItemsFromJson(json);

 final  List<KmaMidLandFcstApiItem> _item;
@override@JsonKey(name: 'item') List<KmaMidLandFcstApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaMidLandFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiItemsCopyWith<_KmaMidLandFcstApiItems> get copyWith => __$KmaMidLandFcstApiItemsCopyWithImpl<_KmaMidLandFcstApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaMidLandFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiItemsCopyWith<$Res> implements $KmaMidLandFcstApiItemsCopyWith<$Res> {
  factory _$KmaMidLandFcstApiItemsCopyWith(_KmaMidLandFcstApiItems value, $Res Function(_KmaMidLandFcstApiItems) _then) = __$KmaMidLandFcstApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidLandFcstApiItem> item
});




}
/// @nodoc
class __$KmaMidLandFcstApiItemsCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiItemsCopyWith<$Res> {
  __$KmaMidLandFcstApiItemsCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiItems _self;
  final $Res Function(_KmaMidLandFcstApiItems) _then;

/// Create a copy of KmaMidLandFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaMidLandFcstApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidLandFcstApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaMidLandFcstApiItem {

 String get regId;// 지역 코드 (예: 11B00000)
@JsonKey(name: 'rnSt4Am') int? get rnSt4Am;@JsonKey(name: 'rnSt4Pm') int? get rnSt4Pm;@JsonKey(name: 'wf4Am') String? get wf4Am;@JsonKey(name: 'wf4Pm') String? get wf4Pm;@JsonKey(name: 'rnSt5Am') int? get rnSt5Am;@JsonKey(name: 'rnSt5Pm') int? get rnSt5Pm;@JsonKey(name: 'wf5Am') String? get wf5Am;@JsonKey(name: 'wf5Pm') String? get wf5Pm;@JsonKey(name: 'rnSt6Am') int? get rnSt6Am;@JsonKey(name: 'rnSt6Pm') int? get rnSt6Pm;@JsonKey(name: 'wf6Am') String? get wf6Am;@JsonKey(name: 'wf6Pm') String? get wf6Pm;@JsonKey(name: 'rnSt7Am') int? get rnSt7Am;@JsonKey(name: 'rnSt7Pm') int? get rnSt7Pm;@JsonKey(name: 'wf7Am') String? get wf7Am;@JsonKey(name: 'wf7Pm') String? get wf7Pm;
/// Create a copy of KmaMidLandFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidLandFcstApiItemCopyWith<KmaMidLandFcstApiItem> get copyWith => _$KmaMidLandFcstApiItemCopyWithImpl<KmaMidLandFcstApiItem>(this as KmaMidLandFcstApiItem, _$identity);

  /// Serializes this KmaMidLandFcstApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidLandFcstApiItem&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.rnSt4Am, rnSt4Am) || other.rnSt4Am == rnSt4Am)&&(identical(other.rnSt4Pm, rnSt4Pm) || other.rnSt4Pm == rnSt4Pm)&&(identical(other.wf4Am, wf4Am) || other.wf4Am == wf4Am)&&(identical(other.wf4Pm, wf4Pm) || other.wf4Pm == wf4Pm)&&(identical(other.rnSt5Am, rnSt5Am) || other.rnSt5Am == rnSt5Am)&&(identical(other.rnSt5Pm, rnSt5Pm) || other.rnSt5Pm == rnSt5Pm)&&(identical(other.wf5Am, wf5Am) || other.wf5Am == wf5Am)&&(identical(other.wf5Pm, wf5Pm) || other.wf5Pm == wf5Pm)&&(identical(other.rnSt6Am, rnSt6Am) || other.rnSt6Am == rnSt6Am)&&(identical(other.rnSt6Pm, rnSt6Pm) || other.rnSt6Pm == rnSt6Pm)&&(identical(other.wf6Am, wf6Am) || other.wf6Am == wf6Am)&&(identical(other.wf6Pm, wf6Pm) || other.wf6Pm == wf6Pm)&&(identical(other.rnSt7Am, rnSt7Am) || other.rnSt7Am == rnSt7Am)&&(identical(other.rnSt7Pm, rnSt7Pm) || other.rnSt7Pm == rnSt7Pm)&&(identical(other.wf7Am, wf7Am) || other.wf7Am == wf7Am)&&(identical(other.wf7Pm, wf7Pm) || other.wf7Pm == wf7Pm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regId,rnSt4Am,rnSt4Pm,wf4Am,wf4Pm,rnSt5Am,rnSt5Pm,wf5Am,wf5Pm,rnSt6Am,rnSt6Pm,wf6Am,wf6Pm,rnSt7Am,rnSt7Pm,wf7Am,wf7Pm);

@override
String toString() {
  return 'KmaMidLandFcstApiItem(regId: $regId, rnSt4Am: $rnSt4Am, rnSt4Pm: $rnSt4Pm, wf4Am: $wf4Am, wf4Pm: $wf4Pm, rnSt5Am: $rnSt5Am, rnSt5Pm: $rnSt5Pm, wf5Am: $wf5Am, wf5Pm: $wf5Pm, rnSt6Am: $rnSt6Am, rnSt6Pm: $rnSt6Pm, wf6Am: $wf6Am, wf6Pm: $wf6Pm, rnSt7Am: $rnSt7Am, rnSt7Pm: $rnSt7Pm, wf7Am: $wf7Am, wf7Pm: $wf7Pm)';
}


}

/// @nodoc
abstract mixin class $KmaMidLandFcstApiItemCopyWith<$Res>  {
  factory $KmaMidLandFcstApiItemCopyWith(KmaMidLandFcstApiItem value, $Res Function(KmaMidLandFcstApiItem) _then) = _$KmaMidLandFcstApiItemCopyWithImpl;
@useResult
$Res call({
 String regId,@JsonKey(name: 'rnSt4Am') int? rnSt4Am,@JsonKey(name: 'rnSt4Pm') int? rnSt4Pm,@JsonKey(name: 'wf4Am') String? wf4Am,@JsonKey(name: 'wf4Pm') String? wf4Pm,@JsonKey(name: 'rnSt5Am') int? rnSt5Am,@JsonKey(name: 'rnSt5Pm') int? rnSt5Pm,@JsonKey(name: 'wf5Am') String? wf5Am,@JsonKey(name: 'wf5Pm') String? wf5Pm,@JsonKey(name: 'rnSt6Am') int? rnSt6Am,@JsonKey(name: 'rnSt6Pm') int? rnSt6Pm,@JsonKey(name: 'wf6Am') String? wf6Am,@JsonKey(name: 'wf6Pm') String? wf6Pm,@JsonKey(name: 'rnSt7Am') int? rnSt7Am,@JsonKey(name: 'rnSt7Pm') int? rnSt7Pm,@JsonKey(name: 'wf7Am') String? wf7Am,@JsonKey(name: 'wf7Pm') String? wf7Pm
});




}
/// @nodoc
class _$KmaMidLandFcstApiItemCopyWithImpl<$Res>
    implements $KmaMidLandFcstApiItemCopyWith<$Res> {
  _$KmaMidLandFcstApiItemCopyWithImpl(this._self, this._then);

  final KmaMidLandFcstApiItem _self;
  final $Res Function(KmaMidLandFcstApiItem) _then;

/// Create a copy of KmaMidLandFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regId = null,Object? rnSt4Am = freezed,Object? rnSt4Pm = freezed,Object? wf4Am = freezed,Object? wf4Pm = freezed,Object? rnSt5Am = freezed,Object? rnSt5Pm = freezed,Object? wf5Am = freezed,Object? wf5Pm = freezed,Object? rnSt6Am = freezed,Object? rnSt6Pm = freezed,Object? wf6Am = freezed,Object? wf6Pm = freezed,Object? rnSt7Am = freezed,Object? rnSt7Pm = freezed,Object? wf7Am = freezed,Object? wf7Pm = freezed,}) {
  return _then(_self.copyWith(
regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,rnSt4Am: freezed == rnSt4Am ? _self.rnSt4Am : rnSt4Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt4Pm: freezed == rnSt4Pm ? _self.rnSt4Pm : rnSt4Pm // ignore: cast_nullable_to_non_nullable
as int?,wf4Am: freezed == wf4Am ? _self.wf4Am : wf4Am // ignore: cast_nullable_to_non_nullable
as String?,wf4Pm: freezed == wf4Pm ? _self.wf4Pm : wf4Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt5Am: freezed == rnSt5Am ? _self.rnSt5Am : rnSt5Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt5Pm: freezed == rnSt5Pm ? _self.rnSt5Pm : rnSt5Pm // ignore: cast_nullable_to_non_nullable
as int?,wf5Am: freezed == wf5Am ? _self.wf5Am : wf5Am // ignore: cast_nullable_to_non_nullable
as String?,wf5Pm: freezed == wf5Pm ? _self.wf5Pm : wf5Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt6Am: freezed == rnSt6Am ? _self.rnSt6Am : rnSt6Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt6Pm: freezed == rnSt6Pm ? _self.rnSt6Pm : rnSt6Pm // ignore: cast_nullable_to_non_nullable
as int?,wf6Am: freezed == wf6Am ? _self.wf6Am : wf6Am // ignore: cast_nullable_to_non_nullable
as String?,wf6Pm: freezed == wf6Pm ? _self.wf6Pm : wf6Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt7Am: freezed == rnSt7Am ? _self.rnSt7Am : rnSt7Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt7Pm: freezed == rnSt7Pm ? _self.rnSt7Pm : rnSt7Pm // ignore: cast_nullable_to_non_nullable
as int?,wf7Am: freezed == wf7Am ? _self.wf7Am : wf7Am // ignore: cast_nullable_to_non_nullable
as String?,wf7Pm: freezed == wf7Pm ? _self.wf7Pm : wf7Pm // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidLandFcstApiItem].
extension KmaMidLandFcstApiItemPatterns on KmaMidLandFcstApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidLandFcstApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidLandFcstApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String regId, @JsonKey(name: 'rnSt4Am')  int? rnSt4Am, @JsonKey(name: 'rnSt4Pm')  int? rnSt4Pm, @JsonKey(name: 'wf4Am')  String? wf4Am, @JsonKey(name: 'wf4Pm')  String? wf4Pm, @JsonKey(name: 'rnSt5Am')  int? rnSt5Am, @JsonKey(name: 'rnSt5Pm')  int? rnSt5Pm, @JsonKey(name: 'wf5Am')  String? wf5Am, @JsonKey(name: 'wf5Pm')  String? wf5Pm, @JsonKey(name: 'rnSt6Am')  int? rnSt6Am, @JsonKey(name: 'rnSt6Pm')  int? rnSt6Pm, @JsonKey(name: 'wf6Am')  String? wf6Am, @JsonKey(name: 'wf6Pm')  String? wf6Pm, @JsonKey(name: 'rnSt7Am')  int? rnSt7Am, @JsonKey(name: 'rnSt7Pm')  int? rnSt7Pm, @JsonKey(name: 'wf7Am')  String? wf7Am, @JsonKey(name: 'wf7Pm')  String? wf7Pm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem() when $default != null:
return $default(_that.regId,_that.rnSt4Am,_that.rnSt4Pm,_that.wf4Am,_that.wf4Pm,_that.rnSt5Am,_that.rnSt5Pm,_that.wf5Am,_that.wf5Pm,_that.rnSt6Am,_that.rnSt6Pm,_that.wf6Am,_that.wf6Pm,_that.rnSt7Am,_that.rnSt7Pm,_that.wf7Am,_that.wf7Pm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String regId, @JsonKey(name: 'rnSt4Am')  int? rnSt4Am, @JsonKey(name: 'rnSt4Pm')  int? rnSt4Pm, @JsonKey(name: 'wf4Am')  String? wf4Am, @JsonKey(name: 'wf4Pm')  String? wf4Pm, @JsonKey(name: 'rnSt5Am')  int? rnSt5Am, @JsonKey(name: 'rnSt5Pm')  int? rnSt5Pm, @JsonKey(name: 'wf5Am')  String? wf5Am, @JsonKey(name: 'wf5Pm')  String? wf5Pm, @JsonKey(name: 'rnSt6Am')  int? rnSt6Am, @JsonKey(name: 'rnSt6Pm')  int? rnSt6Pm, @JsonKey(name: 'wf6Am')  String? wf6Am, @JsonKey(name: 'wf6Pm')  String? wf6Pm, @JsonKey(name: 'rnSt7Am')  int? rnSt7Am, @JsonKey(name: 'rnSt7Pm')  int? rnSt7Pm, @JsonKey(name: 'wf7Am')  String? wf7Am, @JsonKey(name: 'wf7Pm')  String? wf7Pm)  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem():
return $default(_that.regId,_that.rnSt4Am,_that.rnSt4Pm,_that.wf4Am,_that.wf4Pm,_that.rnSt5Am,_that.rnSt5Pm,_that.wf5Am,_that.wf5Pm,_that.rnSt6Am,_that.rnSt6Pm,_that.wf6Am,_that.wf6Pm,_that.rnSt7Am,_that.rnSt7Pm,_that.wf7Am,_that.wf7Pm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String regId, @JsonKey(name: 'rnSt4Am')  int? rnSt4Am, @JsonKey(name: 'rnSt4Pm')  int? rnSt4Pm, @JsonKey(name: 'wf4Am')  String? wf4Am, @JsonKey(name: 'wf4Pm')  String? wf4Pm, @JsonKey(name: 'rnSt5Am')  int? rnSt5Am, @JsonKey(name: 'rnSt5Pm')  int? rnSt5Pm, @JsonKey(name: 'wf5Am')  String? wf5Am, @JsonKey(name: 'wf5Pm')  String? wf5Pm, @JsonKey(name: 'rnSt6Am')  int? rnSt6Am, @JsonKey(name: 'rnSt6Pm')  int? rnSt6Pm, @JsonKey(name: 'wf6Am')  String? wf6Am, @JsonKey(name: 'wf6Pm')  String? wf6Pm, @JsonKey(name: 'rnSt7Am')  int? rnSt7Am, @JsonKey(name: 'rnSt7Pm')  int? rnSt7Pm, @JsonKey(name: 'wf7Am')  String? wf7Am, @JsonKey(name: 'wf7Pm')  String? wf7Pm)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidLandFcstApiItem() when $default != null:
return $default(_that.regId,_that.rnSt4Am,_that.rnSt4Pm,_that.wf4Am,_that.wf4Pm,_that.rnSt5Am,_that.rnSt5Pm,_that.wf5Am,_that.wf5Pm,_that.rnSt6Am,_that.rnSt6Pm,_that.wf6Am,_that.wf6Pm,_that.rnSt7Am,_that.rnSt7Pm,_that.wf7Am,_that.wf7Pm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidLandFcstApiItem implements KmaMidLandFcstApiItem {
  const _KmaMidLandFcstApiItem({required this.regId, @JsonKey(name: 'rnSt4Am') this.rnSt4Am, @JsonKey(name: 'rnSt4Pm') this.rnSt4Pm, @JsonKey(name: 'wf4Am') this.wf4Am, @JsonKey(name: 'wf4Pm') this.wf4Pm, @JsonKey(name: 'rnSt5Am') this.rnSt5Am, @JsonKey(name: 'rnSt5Pm') this.rnSt5Pm, @JsonKey(name: 'wf5Am') this.wf5Am, @JsonKey(name: 'wf5Pm') this.wf5Pm, @JsonKey(name: 'rnSt6Am') this.rnSt6Am, @JsonKey(name: 'rnSt6Pm') this.rnSt6Pm, @JsonKey(name: 'wf6Am') this.wf6Am, @JsonKey(name: 'wf6Pm') this.wf6Pm, @JsonKey(name: 'rnSt7Am') this.rnSt7Am, @JsonKey(name: 'rnSt7Pm') this.rnSt7Pm, @JsonKey(name: 'wf7Am') this.wf7Am, @JsonKey(name: 'wf7Pm') this.wf7Pm});
  factory _KmaMidLandFcstApiItem.fromJson(Map<String, dynamic> json) => _$KmaMidLandFcstApiItemFromJson(json);

@override final  String regId;
// 지역 코드 (예: 11B00000)
@override@JsonKey(name: 'rnSt4Am') final  int? rnSt4Am;
@override@JsonKey(name: 'rnSt4Pm') final  int? rnSt4Pm;
@override@JsonKey(name: 'wf4Am') final  String? wf4Am;
@override@JsonKey(name: 'wf4Pm') final  String? wf4Pm;
@override@JsonKey(name: 'rnSt5Am') final  int? rnSt5Am;
@override@JsonKey(name: 'rnSt5Pm') final  int? rnSt5Pm;
@override@JsonKey(name: 'wf5Am') final  String? wf5Am;
@override@JsonKey(name: 'wf5Pm') final  String? wf5Pm;
@override@JsonKey(name: 'rnSt6Am') final  int? rnSt6Am;
@override@JsonKey(name: 'rnSt6Pm') final  int? rnSt6Pm;
@override@JsonKey(name: 'wf6Am') final  String? wf6Am;
@override@JsonKey(name: 'wf6Pm') final  String? wf6Pm;
@override@JsonKey(name: 'rnSt7Am') final  int? rnSt7Am;
@override@JsonKey(name: 'rnSt7Pm') final  int? rnSt7Pm;
@override@JsonKey(name: 'wf7Am') final  String? wf7Am;
@override@JsonKey(name: 'wf7Pm') final  String? wf7Pm;

/// Create a copy of KmaMidLandFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidLandFcstApiItemCopyWith<_KmaMidLandFcstApiItem> get copyWith => __$KmaMidLandFcstApiItemCopyWithImpl<_KmaMidLandFcstApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidLandFcstApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidLandFcstApiItem&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.rnSt4Am, rnSt4Am) || other.rnSt4Am == rnSt4Am)&&(identical(other.rnSt4Pm, rnSt4Pm) || other.rnSt4Pm == rnSt4Pm)&&(identical(other.wf4Am, wf4Am) || other.wf4Am == wf4Am)&&(identical(other.wf4Pm, wf4Pm) || other.wf4Pm == wf4Pm)&&(identical(other.rnSt5Am, rnSt5Am) || other.rnSt5Am == rnSt5Am)&&(identical(other.rnSt5Pm, rnSt5Pm) || other.rnSt5Pm == rnSt5Pm)&&(identical(other.wf5Am, wf5Am) || other.wf5Am == wf5Am)&&(identical(other.wf5Pm, wf5Pm) || other.wf5Pm == wf5Pm)&&(identical(other.rnSt6Am, rnSt6Am) || other.rnSt6Am == rnSt6Am)&&(identical(other.rnSt6Pm, rnSt6Pm) || other.rnSt6Pm == rnSt6Pm)&&(identical(other.wf6Am, wf6Am) || other.wf6Am == wf6Am)&&(identical(other.wf6Pm, wf6Pm) || other.wf6Pm == wf6Pm)&&(identical(other.rnSt7Am, rnSt7Am) || other.rnSt7Am == rnSt7Am)&&(identical(other.rnSt7Pm, rnSt7Pm) || other.rnSt7Pm == rnSt7Pm)&&(identical(other.wf7Am, wf7Am) || other.wf7Am == wf7Am)&&(identical(other.wf7Pm, wf7Pm) || other.wf7Pm == wf7Pm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regId,rnSt4Am,rnSt4Pm,wf4Am,wf4Pm,rnSt5Am,rnSt5Pm,wf5Am,wf5Pm,rnSt6Am,rnSt6Pm,wf6Am,wf6Pm,rnSt7Am,rnSt7Pm,wf7Am,wf7Pm);

@override
String toString() {
  return 'KmaMidLandFcstApiItem(regId: $regId, rnSt4Am: $rnSt4Am, rnSt4Pm: $rnSt4Pm, wf4Am: $wf4Am, wf4Pm: $wf4Pm, rnSt5Am: $rnSt5Am, rnSt5Pm: $rnSt5Pm, wf5Am: $wf5Am, wf5Pm: $wf5Pm, rnSt6Am: $rnSt6Am, rnSt6Pm: $rnSt6Pm, wf6Am: $wf6Am, wf6Pm: $wf6Pm, rnSt7Am: $rnSt7Am, rnSt7Pm: $rnSt7Pm, wf7Am: $wf7Am, wf7Pm: $wf7Pm)';
}


}

/// @nodoc
abstract mixin class _$KmaMidLandFcstApiItemCopyWith<$Res> implements $KmaMidLandFcstApiItemCopyWith<$Res> {
  factory _$KmaMidLandFcstApiItemCopyWith(_KmaMidLandFcstApiItem value, $Res Function(_KmaMidLandFcstApiItem) _then) = __$KmaMidLandFcstApiItemCopyWithImpl;
@override @useResult
$Res call({
 String regId,@JsonKey(name: 'rnSt4Am') int? rnSt4Am,@JsonKey(name: 'rnSt4Pm') int? rnSt4Pm,@JsonKey(name: 'wf4Am') String? wf4Am,@JsonKey(name: 'wf4Pm') String? wf4Pm,@JsonKey(name: 'rnSt5Am') int? rnSt5Am,@JsonKey(name: 'rnSt5Pm') int? rnSt5Pm,@JsonKey(name: 'wf5Am') String? wf5Am,@JsonKey(name: 'wf5Pm') String? wf5Pm,@JsonKey(name: 'rnSt6Am') int? rnSt6Am,@JsonKey(name: 'rnSt6Pm') int? rnSt6Pm,@JsonKey(name: 'wf6Am') String? wf6Am,@JsonKey(name: 'wf6Pm') String? wf6Pm,@JsonKey(name: 'rnSt7Am') int? rnSt7Am,@JsonKey(name: 'rnSt7Pm') int? rnSt7Pm,@JsonKey(name: 'wf7Am') String? wf7Am,@JsonKey(name: 'wf7Pm') String? wf7Pm
});




}
/// @nodoc
class __$KmaMidLandFcstApiItemCopyWithImpl<$Res>
    implements _$KmaMidLandFcstApiItemCopyWith<$Res> {
  __$KmaMidLandFcstApiItemCopyWithImpl(this._self, this._then);

  final _KmaMidLandFcstApiItem _self;
  final $Res Function(_KmaMidLandFcstApiItem) _then;

/// Create a copy of KmaMidLandFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regId = null,Object? rnSt4Am = freezed,Object? rnSt4Pm = freezed,Object? wf4Am = freezed,Object? wf4Pm = freezed,Object? rnSt5Am = freezed,Object? rnSt5Pm = freezed,Object? wf5Am = freezed,Object? wf5Pm = freezed,Object? rnSt6Am = freezed,Object? rnSt6Pm = freezed,Object? wf6Am = freezed,Object? wf6Pm = freezed,Object? rnSt7Am = freezed,Object? rnSt7Pm = freezed,Object? wf7Am = freezed,Object? wf7Pm = freezed,}) {
  return _then(_KmaMidLandFcstApiItem(
regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,rnSt4Am: freezed == rnSt4Am ? _self.rnSt4Am : rnSt4Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt4Pm: freezed == rnSt4Pm ? _self.rnSt4Pm : rnSt4Pm // ignore: cast_nullable_to_non_nullable
as int?,wf4Am: freezed == wf4Am ? _self.wf4Am : wf4Am // ignore: cast_nullable_to_non_nullable
as String?,wf4Pm: freezed == wf4Pm ? _self.wf4Pm : wf4Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt5Am: freezed == rnSt5Am ? _self.rnSt5Am : rnSt5Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt5Pm: freezed == rnSt5Pm ? _self.rnSt5Pm : rnSt5Pm // ignore: cast_nullable_to_non_nullable
as int?,wf5Am: freezed == wf5Am ? _self.wf5Am : wf5Am // ignore: cast_nullable_to_non_nullable
as String?,wf5Pm: freezed == wf5Pm ? _self.wf5Pm : wf5Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt6Am: freezed == rnSt6Am ? _self.rnSt6Am : rnSt6Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt6Pm: freezed == rnSt6Pm ? _self.rnSt6Pm : rnSt6Pm // ignore: cast_nullable_to_non_nullable
as int?,wf6Am: freezed == wf6Am ? _self.wf6Am : wf6Am // ignore: cast_nullable_to_non_nullable
as String?,wf6Pm: freezed == wf6Pm ? _self.wf6Pm : wf6Pm // ignore: cast_nullable_to_non_nullable
as String?,rnSt7Am: freezed == rnSt7Am ? _self.rnSt7Am : rnSt7Am // ignore: cast_nullable_to_non_nullable
as int?,rnSt7Pm: freezed == rnSt7Pm ? _self.rnSt7Pm : rnSt7Pm // ignore: cast_nullable_to_non_nullable
as int?,wf7Am: freezed == wf7Am ? _self.wf7Am : wf7Am // ignore: cast_nullable_to_non_nullable
as String?,wf7Pm: freezed == wf7Pm ? _self.wf7Pm : wf7Pm // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
