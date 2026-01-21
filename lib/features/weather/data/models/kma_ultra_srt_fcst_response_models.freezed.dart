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

@JsonKey(name: 'response') KmaUltraSrtFcstApiResult get response;
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
@JsonKey(name: 'response') KmaUltraSrtFcstApiResult response
});


$KmaUltraSrtFcstApiResultCopyWith<$Res> get response;

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
as KmaUltraSrtFcstApiResult,
  ));
}
/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiResultCopyWith<$Res> get response {
  
  return $KmaUltraSrtFcstApiResultCopyWith<$Res>(_self.response, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaUltraSrtFcstApiResult response)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaUltraSrtFcstApiResult response)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaUltraSrtFcstApiResult response)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResponse() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiResponse extends KmaUltraSrtFcstApiResponse {
  const _KmaUltraSrtFcstApiResponse({@JsonKey(name: 'response') required this.response}): super._();
  factory _KmaUltraSrtFcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaUltraSrtFcstApiResult response;

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
@JsonKey(name: 'response') KmaUltraSrtFcstApiResult response
});


@override $KmaUltraSrtFcstApiResultCopyWith<$Res> get response;

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
as KmaUltraSrtFcstApiResult,
  ));
}

/// Create a copy of KmaUltraSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiResultCopyWith<$Res> get response {
  
  return $KmaUltraSrtFcstApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstApiResult {

@JsonKey(name: 'header') KmaUltraSrtFcstApiHeader get header;@JsonKey(name: 'body') KmaUltraSrtFcstApiBody get body;
/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiResultCopyWith<KmaUltraSrtFcstApiResult> get copyWith => _$KmaUltraSrtFcstApiResultCopyWithImpl<KmaUltraSrtFcstApiResult>(this as KmaUltraSrtFcstApiResult, _$identity);

  /// Serializes this KmaUltraSrtFcstApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiResultCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiResultCopyWith(KmaUltraSrtFcstApiResult value, $Res Function(KmaUltraSrtFcstApiResult) _then) = _$KmaUltraSrtFcstApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaUltraSrtFcstApiHeader header,@JsonKey(name: 'body') KmaUltraSrtFcstApiBody body
});


$KmaUltraSrtFcstApiHeaderCopyWith<$Res> get header;$KmaUltraSrtFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaUltraSrtFcstApiResultCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiResultCopyWith<$Res> {
  _$KmaUltraSrtFcstApiResultCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiResult _self;
  final $Res Function(KmaUltraSrtFcstApiResult) _then;

/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiBody,
  ));
}
/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiResult].
extension KmaUltraSrtFcstApiResultPatterns on KmaUltraSrtFcstApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaUltraSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtFcstApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaUltraSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtFcstApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaUltraSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtFcstApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiResult implements KmaUltraSrtFcstApiResult {
  const _KmaUltraSrtFcstApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaUltraSrtFcstApiResult.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaUltraSrtFcstApiHeader header;
@override@JsonKey(name: 'body') final  KmaUltraSrtFcstApiBody body;

/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiResultCopyWith<_KmaUltraSrtFcstApiResult> get copyWith => __$KmaUltraSrtFcstApiResultCopyWithImpl<_KmaUltraSrtFcstApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiResultCopyWith<$Res> implements $KmaUltraSrtFcstApiResultCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiResultCopyWith(_KmaUltraSrtFcstApiResult value, $Res Function(_KmaUltraSrtFcstApiResult) _then) = __$KmaUltraSrtFcstApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaUltraSrtFcstApiHeader header,@JsonKey(name: 'body') KmaUltraSrtFcstApiBody body
});


@override $KmaUltraSrtFcstApiHeaderCopyWith<$Res> get header;@override $KmaUltraSrtFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaUltraSrtFcstApiResultCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiResultCopyWith<$Res> {
  __$KmaUltraSrtFcstApiResultCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiResult _self;
  final $Res Function(_KmaUltraSrtFcstApiResult) _then;

/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaUltraSrtFcstApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiBody,
  ));
}

/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaUltraSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiHeaderCopyWith<KmaUltraSrtFcstApiHeader> get copyWith => _$KmaUltraSrtFcstApiHeaderCopyWithImpl<KmaUltraSrtFcstApiHeader>(this as KmaUltraSrtFcstApiHeader, _$identity);

  /// Serializes this KmaUltraSrtFcstApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiHeaderCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiHeaderCopyWith(KmaUltraSrtFcstApiHeader value, $Res Function(KmaUltraSrtFcstApiHeader) _then) = _$KmaUltraSrtFcstApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaUltraSrtFcstApiHeaderCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiHeaderCopyWith<$Res> {
  _$KmaUltraSrtFcstApiHeaderCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiHeader _self;
  final $Res Function(KmaUltraSrtFcstApiHeader) _then;

/// Create a copy of KmaUltraSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiHeader].
extension KmaUltraSrtFcstApiHeaderPatterns on KmaUltraSrtFcstApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiHeader() when $default != null:
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
case _KmaUltraSrtFcstApiHeader() when $default != null:
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
case _KmaUltraSrtFcstApiHeader():
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
case _KmaUltraSrtFcstApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiHeader implements KmaUltraSrtFcstApiHeader {
  const _KmaUltraSrtFcstApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaUltraSrtFcstApiHeader.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaUltraSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiHeaderCopyWith<_KmaUltraSrtFcstApiHeader> get copyWith => __$KmaUltraSrtFcstApiHeaderCopyWithImpl<_KmaUltraSrtFcstApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiHeaderCopyWith<$Res> implements $KmaUltraSrtFcstApiHeaderCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiHeaderCopyWith(_KmaUltraSrtFcstApiHeader value, $Res Function(_KmaUltraSrtFcstApiHeader) _then) = __$KmaUltraSrtFcstApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaUltraSrtFcstApiHeaderCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiHeaderCopyWith<$Res> {
  __$KmaUltraSrtFcstApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiHeader _self;
  final $Res Function(_KmaUltraSrtFcstApiHeader) _then;

/// Create a copy of KmaUltraSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaUltraSrtFcstApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtFcstApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaUltraSrtFcstApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiBodyCopyWith<KmaUltraSrtFcstApiBody> get copyWith => _$KmaUltraSrtFcstApiBodyCopyWithImpl<KmaUltraSrtFcstApiBody>(this as KmaUltraSrtFcstApiBody, _$identity);

  /// Serializes this KmaUltraSrtFcstApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiBodyCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiBodyCopyWith(KmaUltraSrtFcstApiBody value, $Res Function(KmaUltraSrtFcstApiBody) _then) = _$KmaUltraSrtFcstApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaUltraSrtFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaUltraSrtFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaUltraSrtFcstApiBodyCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiBodyCopyWith<$Res> {
  _$KmaUltraSrtFcstApiBodyCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiBody _self;
  final $Res Function(KmaUltraSrtFcstApiBody) _then;

/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiBody].
extension KmaUltraSrtFcstApiBodyPatterns on KmaUltraSrtFcstApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiBody implements KmaUltraSrtFcstApiBody {
  const _KmaUltraSrtFcstApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _KmaUltraSrtFcstApiBody.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaUltraSrtFcstApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiBodyCopyWith<_KmaUltraSrtFcstApiBody> get copyWith => __$KmaUltraSrtFcstApiBodyCopyWithImpl<_KmaUltraSrtFcstApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiBodyCopyWith<$Res> implements $KmaUltraSrtFcstApiBodyCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiBodyCopyWith(_KmaUltraSrtFcstApiBody value, $Res Function(_KmaUltraSrtFcstApiBody) _then) = __$KmaUltraSrtFcstApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaUltraSrtFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaUltraSrtFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaUltraSrtFcstApiBodyCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiBodyCopyWith<$Res> {
  __$KmaUltraSrtFcstApiBodyCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiBody _self;
  final $Res Function(_KmaUltraSrtFcstApiBody) _then;

/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaUltraSrtFcstApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaUltraSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtFcstApiItems {

@JsonKey(name: 'item') List<KmaUltraSrtFcstApiItem> get item;
/// Create a copy of KmaUltraSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiItemsCopyWith<KmaUltraSrtFcstApiItems> get copyWith => _$KmaUltraSrtFcstApiItemsCopyWithImpl<KmaUltraSrtFcstApiItems>(this as KmaUltraSrtFcstApiItems, _$identity);

  /// Serializes this KmaUltraSrtFcstApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaUltraSrtFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiItemsCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiItemsCopyWith(KmaUltraSrtFcstApiItems value, $Res Function(KmaUltraSrtFcstApiItems) _then) = _$KmaUltraSrtFcstApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaUltraSrtFcstApiItem> item
});




}
/// @nodoc
class _$KmaUltraSrtFcstApiItemsCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiItemsCopyWith<$Res> {
  _$KmaUltraSrtFcstApiItemsCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiItems _self;
  final $Res Function(KmaUltraSrtFcstApiItems) _then;

/// Create a copy of KmaUltraSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtFcstApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiItems].
extension KmaUltraSrtFcstApiItemsPatterns on KmaUltraSrtFcstApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaUltraSrtFcstApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaUltraSrtFcstApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaUltraSrtFcstApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiItems implements KmaUltraSrtFcstApiItems {
  const _KmaUltraSrtFcstApiItems({@JsonKey(name: 'item') required final  List<KmaUltraSrtFcstApiItem> item}): _item = item;
  factory _KmaUltraSrtFcstApiItems.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiItemsFromJson(json);

 final  List<KmaUltraSrtFcstApiItem> _item;
@override@JsonKey(name: 'item') List<KmaUltraSrtFcstApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaUltraSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiItemsCopyWith<_KmaUltraSrtFcstApiItems> get copyWith => __$KmaUltraSrtFcstApiItemsCopyWithImpl<_KmaUltraSrtFcstApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaUltraSrtFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiItemsCopyWith<$Res> implements $KmaUltraSrtFcstApiItemsCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiItemsCopyWith(_KmaUltraSrtFcstApiItems value, $Res Function(_KmaUltraSrtFcstApiItems) _then) = __$KmaUltraSrtFcstApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaUltraSrtFcstApiItem> item
});




}
/// @nodoc
class __$KmaUltraSrtFcstApiItemsCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiItemsCopyWith<$Res> {
  __$KmaUltraSrtFcstApiItemsCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiItems _self;
  final $Res Function(_KmaUltraSrtFcstApiItems) _then;

/// Create a copy of KmaUltraSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaUltraSrtFcstApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtFcstApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtFcstApiItem {

@JsonKey(name: 'baseDate') String get baseDate;@JsonKey(name: 'baseTime') String get baseTime;@JsonKey(name: 'category') String get category;@JsonKey(name: 'fcstDate') String get fcstDate;@JsonKey(name: 'fcstTime') String get fcstTime;@JsonKey(name: 'fcstValue') String get fcstValue;@JsonKey(name: 'nx') int get nx;@JsonKey(name: 'ny') int get ny;
/// Create a copy of KmaUltraSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtFcstApiItemCopyWith<KmaUltraSrtFcstApiItem> get copyWith => _$KmaUltraSrtFcstApiItemCopyWithImpl<KmaUltraSrtFcstApiItem>(this as KmaUltraSrtFcstApiItem, _$identity);

  /// Serializes this KmaUltraSrtFcstApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtFcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtFcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtFcstApiItemCopyWith<$Res>  {
  factory $KmaUltraSrtFcstApiItemCopyWith(KmaUltraSrtFcstApiItem value, $Res Function(KmaUltraSrtFcstApiItem) _then) = _$KmaUltraSrtFcstApiItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'fcstDate') String fcstDate,@JsonKey(name: 'fcstTime') String fcstTime,@JsonKey(name: 'fcstValue') String fcstValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class _$KmaUltraSrtFcstApiItemCopyWithImpl<$Res>
    implements $KmaUltraSrtFcstApiItemCopyWith<$Res> {
  _$KmaUltraSrtFcstApiItemCopyWithImpl(this._self, this._then);

  final KmaUltraSrtFcstApiItem _self;
  final $Res Function(KmaUltraSrtFcstApiItem) _then;

/// Create a copy of KmaUltraSrtFcstApiItem
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


/// Adds pattern-matching-related methods to [KmaUltraSrtFcstApiItem].
extension KmaUltraSrtFcstApiItemPatterns on KmaUltraSrtFcstApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtFcstApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtFcstApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'fcstDate')  String fcstDate, @JsonKey(name: 'fcstTime')  String fcstTime, @JsonKey(name: 'fcstValue')  String fcstValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'fcstDate')  String fcstDate, @JsonKey(name: 'fcstTime')  String fcstTime, @JsonKey(name: 'fcstValue')  String fcstValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'fcstDate')  String fcstDate, @JsonKey(name: 'fcstTime')  String fcstTime, @JsonKey(name: 'fcstValue')  String fcstValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtFcstApiItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.fcstDate,_that.fcstTime,_that.fcstValue,_that.nx,_that.ny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtFcstApiItem implements KmaUltraSrtFcstApiItem {
  const _KmaUltraSrtFcstApiItem({@JsonKey(name: 'baseDate') required this.baseDate, @JsonKey(name: 'baseTime') required this.baseTime, @JsonKey(name: 'category') required this.category, @JsonKey(name: 'fcstDate') required this.fcstDate, @JsonKey(name: 'fcstTime') required this.fcstTime, @JsonKey(name: 'fcstValue') required this.fcstValue, @JsonKey(name: 'nx') required this.nx, @JsonKey(name: 'ny') required this.ny});
  factory _KmaUltraSrtFcstApiItem.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtFcstApiItemFromJson(json);

@override@JsonKey(name: 'baseDate') final  String baseDate;
@override@JsonKey(name: 'baseTime') final  String baseTime;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'fcstDate') final  String fcstDate;
@override@JsonKey(name: 'fcstTime') final  String fcstTime;
@override@JsonKey(name: 'fcstValue') final  String fcstValue;
@override@JsonKey(name: 'nx') final  int nx;
@override@JsonKey(name: 'ny') final  int ny;

/// Create a copy of KmaUltraSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtFcstApiItemCopyWith<_KmaUltraSrtFcstApiItem> get copyWith => __$KmaUltraSrtFcstApiItemCopyWithImpl<_KmaUltraSrtFcstApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtFcstApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtFcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtFcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtFcstApiItemCopyWith<$Res> implements $KmaUltraSrtFcstApiItemCopyWith<$Res> {
  factory _$KmaUltraSrtFcstApiItemCopyWith(_KmaUltraSrtFcstApiItem value, $Res Function(_KmaUltraSrtFcstApiItem) _then) = __$KmaUltraSrtFcstApiItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'fcstDate') String fcstDate,@JsonKey(name: 'fcstTime') String fcstTime,@JsonKey(name: 'fcstValue') String fcstValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class __$KmaUltraSrtFcstApiItemCopyWithImpl<$Res>
    implements _$KmaUltraSrtFcstApiItemCopyWith<$Res> {
  __$KmaUltraSrtFcstApiItemCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtFcstApiItem _self;
  final $Res Function(_KmaUltraSrtFcstApiItem) _then;

/// Create a copy of KmaUltraSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? fcstDate = null,Object? fcstTime = null,Object? fcstValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_KmaUltraSrtFcstApiItem(
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
