// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_mid_tmp_fcst_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaMidTmpFcstApiResponse {

@JsonKey(name: 'response') KmaMidTmpFcstApiResult get response;
/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiResponseCopyWith<KmaMidTmpFcstApiResponse> get copyWith => _$KmaMidTmpFcstApiResponseCopyWithImpl<KmaMidTmpFcstApiResponse>(this as KmaMidTmpFcstApiResponse, _$identity);

  /// Serializes this KmaMidTmpFcstApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidTmpFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiResponseCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiResponseCopyWith(KmaMidTmpFcstApiResponse value, $Res Function(KmaMidTmpFcstApiResponse) _then) = _$KmaMidTmpFcstApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') KmaMidTmpFcstApiResult response
});


$KmaMidTmpFcstApiResultCopyWith<$Res> get response;

}
/// @nodoc
class _$KmaMidTmpFcstApiResponseCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiResponseCopyWith<$Res> {
  _$KmaMidTmpFcstApiResponseCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiResponse _self;
  final $Res Function(KmaMidTmpFcstApiResponse) _then;

/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiResult,
  ));
}
/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiResultCopyWith<$Res> get response {
  
  return $KmaMidTmpFcstApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiResponse].
extension KmaMidTmpFcstApiResponsePatterns on KmaMidTmpFcstApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidTmpFcstApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidTmpFcstApiResult response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidTmpFcstApiResult response)  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaMidTmpFcstApiResult response)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResponse() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidTmpFcstApiResponse implements KmaMidTmpFcstApiResponse {
  const _KmaMidTmpFcstApiResponse({@JsonKey(name: 'response') required this.response});
  factory _KmaMidTmpFcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaMidTmpFcstApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaMidTmpFcstApiResult response;

/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidTmpFcstApiResponseCopyWith<_KmaMidTmpFcstApiResponse> get copyWith => __$KmaMidTmpFcstApiResponseCopyWithImpl<_KmaMidTmpFcstApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidTmpFcstApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidTmpFcstApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidTmpFcstApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class _$KmaMidTmpFcstApiResponseCopyWith<$Res> implements $KmaMidTmpFcstApiResponseCopyWith<$Res> {
  factory _$KmaMidTmpFcstApiResponseCopyWith(_KmaMidTmpFcstApiResponse value, $Res Function(_KmaMidTmpFcstApiResponse) _then) = __$KmaMidTmpFcstApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') KmaMidTmpFcstApiResult response
});


@override $KmaMidTmpFcstApiResultCopyWith<$Res> get response;

}
/// @nodoc
class __$KmaMidTmpFcstApiResponseCopyWithImpl<$Res>
    implements _$KmaMidTmpFcstApiResponseCopyWith<$Res> {
  __$KmaMidTmpFcstApiResponseCopyWithImpl(this._self, this._then);

  final _KmaMidTmpFcstApiResponse _self;
  final $Res Function(_KmaMidTmpFcstApiResponse) _then;

/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_KmaMidTmpFcstApiResponse(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiResult,
  ));
}

/// Create a copy of KmaMidTmpFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiResultCopyWith<$Res> get response {
  
  return $KmaMidTmpFcstApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$KmaMidTmpFcstApiResult {

@JsonKey(name: 'header') KmaMidTmpFcstApiHeader get header;@JsonKey(name: 'body') KmaMidTmpFcstApiBody get body;
/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiResultCopyWith<KmaMidTmpFcstApiResult> get copyWith => _$KmaMidTmpFcstApiResultCopyWithImpl<KmaMidTmpFcstApiResult>(this as KmaMidTmpFcstApiResult, _$identity);

  /// Serializes this KmaMidTmpFcstApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidTmpFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiResultCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiResultCopyWith(KmaMidTmpFcstApiResult value, $Res Function(KmaMidTmpFcstApiResult) _then) = _$KmaMidTmpFcstApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaMidTmpFcstApiHeader header,@JsonKey(name: 'body') KmaMidTmpFcstApiBody body
});


$KmaMidTmpFcstApiHeaderCopyWith<$Res> get header;$KmaMidTmpFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaMidTmpFcstApiResultCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiResultCopyWith<$Res> {
  _$KmaMidTmpFcstApiResultCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiResult _self;
  final $Res Function(KmaMidTmpFcstApiResult) _then;

/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiBody,
  ));
}
/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidTmpFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaMidTmpFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiResult].
extension KmaMidTmpFcstApiResultPatterns on KmaMidTmpFcstApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidTmpFcstApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidTmpFcstApiHeader header, @JsonKey(name: 'body')  KmaMidTmpFcstApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidTmpFcstApiHeader header, @JsonKey(name: 'body')  KmaMidTmpFcstApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaMidTmpFcstApiHeader header, @JsonKey(name: 'body')  KmaMidTmpFcstApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidTmpFcstApiResult implements KmaMidTmpFcstApiResult {
  const _KmaMidTmpFcstApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaMidTmpFcstApiResult.fromJson(Map<String, dynamic> json) => _$KmaMidTmpFcstApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaMidTmpFcstApiHeader header;
@override@JsonKey(name: 'body') final  KmaMidTmpFcstApiBody body;

/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidTmpFcstApiResultCopyWith<_KmaMidTmpFcstApiResult> get copyWith => __$KmaMidTmpFcstApiResultCopyWithImpl<_KmaMidTmpFcstApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidTmpFcstApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidTmpFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidTmpFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaMidTmpFcstApiResultCopyWith<$Res> implements $KmaMidTmpFcstApiResultCopyWith<$Res> {
  factory _$KmaMidTmpFcstApiResultCopyWith(_KmaMidTmpFcstApiResult value, $Res Function(_KmaMidTmpFcstApiResult) _then) = __$KmaMidTmpFcstApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaMidTmpFcstApiHeader header,@JsonKey(name: 'body') KmaMidTmpFcstApiBody body
});


@override $KmaMidTmpFcstApiHeaderCopyWith<$Res> get header;@override $KmaMidTmpFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaMidTmpFcstApiResultCopyWithImpl<$Res>
    implements _$KmaMidTmpFcstApiResultCopyWith<$Res> {
  __$KmaMidTmpFcstApiResultCopyWithImpl(this._self, this._then);

  final _KmaMidTmpFcstApiResult _self;
  final $Res Function(_KmaMidTmpFcstApiResult) _then;

/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaMidTmpFcstApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiBody,
  ));
}

/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidTmpFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidTmpFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaMidTmpFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaMidTmpFcstApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaMidTmpFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiHeaderCopyWith<KmaMidTmpFcstApiHeader> get copyWith => _$KmaMidTmpFcstApiHeaderCopyWithImpl<KmaMidTmpFcstApiHeader>(this as KmaMidTmpFcstApiHeader, _$identity);

  /// Serializes this KmaMidTmpFcstApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidTmpFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiHeaderCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiHeaderCopyWith(KmaMidTmpFcstApiHeader value, $Res Function(KmaMidTmpFcstApiHeader) _then) = _$KmaMidTmpFcstApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaMidTmpFcstApiHeaderCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiHeaderCopyWith<$Res> {
  _$KmaMidTmpFcstApiHeaderCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiHeader _self;
  final $Res Function(KmaMidTmpFcstApiHeader) _then;

/// Create a copy of KmaMidTmpFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiHeader].
extension KmaMidTmpFcstApiHeaderPatterns on KmaMidTmpFcstApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidTmpFcstApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiHeader() when $default != null:
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
case _KmaMidTmpFcstApiHeader() when $default != null:
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
case _KmaMidTmpFcstApiHeader():
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
case _KmaMidTmpFcstApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidTmpFcstApiHeader implements KmaMidTmpFcstApiHeader {
  const _KmaMidTmpFcstApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaMidTmpFcstApiHeader.fromJson(Map<String, dynamic> json) => _$KmaMidTmpFcstApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaMidTmpFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidTmpFcstApiHeaderCopyWith<_KmaMidTmpFcstApiHeader> get copyWith => __$KmaMidTmpFcstApiHeaderCopyWithImpl<_KmaMidTmpFcstApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidTmpFcstApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidTmpFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidTmpFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaMidTmpFcstApiHeaderCopyWith<$Res> implements $KmaMidTmpFcstApiHeaderCopyWith<$Res> {
  factory _$KmaMidTmpFcstApiHeaderCopyWith(_KmaMidTmpFcstApiHeader value, $Res Function(_KmaMidTmpFcstApiHeader) _then) = __$KmaMidTmpFcstApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaMidTmpFcstApiHeaderCopyWithImpl<$Res>
    implements _$KmaMidTmpFcstApiHeaderCopyWith<$Res> {
  __$KmaMidTmpFcstApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaMidTmpFcstApiHeader _self;
  final $Res Function(_KmaMidTmpFcstApiHeader) _then;

/// Create a copy of KmaMidTmpFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaMidTmpFcstApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

KmaMidTmpFcstApiBody _$KmaMidTmpFcstApiBodyFromJson(
  Map<String, dynamic> json
) {
    return _MidTmpFcstApiBody.fromJson(
      json
    );
}

/// @nodoc
mixin _$KmaMidTmpFcstApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaMidTmpFcstApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiBodyCopyWith<KmaMidTmpFcstApiBody> get copyWith => _$KmaMidTmpFcstApiBodyCopyWithImpl<KmaMidTmpFcstApiBody>(this as KmaMidTmpFcstApiBody, _$identity);

  /// Serializes this KmaMidTmpFcstApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidTmpFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiBodyCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiBodyCopyWith(KmaMidTmpFcstApiBody value, $Res Function(KmaMidTmpFcstApiBody) _then) = _$KmaMidTmpFcstApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaMidTmpFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaMidTmpFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaMidTmpFcstApiBodyCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiBodyCopyWith<$Res> {
  _$KmaMidTmpFcstApiBodyCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiBody _self;
  final $Res Function(KmaMidTmpFcstApiBody) _then;

/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaMidTmpFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiBody].
extension KmaMidTmpFcstApiBodyPatterns on KmaMidTmpFcstApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MidTmpFcstApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MidTmpFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MidTmpFcstApiBody value)  $default,){
final _that = this;
switch (_that) {
case _MidTmpFcstApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MidTmpFcstApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _MidTmpFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidTmpFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MidTmpFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidTmpFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _MidTmpFcstApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaMidTmpFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _MidTmpFcstApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MidTmpFcstApiBody implements KmaMidTmpFcstApiBody {
  const _MidTmpFcstApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _MidTmpFcstApiBody.fromJson(Map<String, dynamic> json) => _$MidTmpFcstApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaMidTmpFcstApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MidTmpFcstApiBodyCopyWith<_MidTmpFcstApiBody> get copyWith => __$MidTmpFcstApiBodyCopyWithImpl<_MidTmpFcstApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MidTmpFcstApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MidTmpFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidTmpFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$MidTmpFcstApiBodyCopyWith<$Res> implements $KmaMidTmpFcstApiBodyCopyWith<$Res> {
  factory _$MidTmpFcstApiBodyCopyWith(_MidTmpFcstApiBody value, $Res Function(_MidTmpFcstApiBody) _then) = __$MidTmpFcstApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaMidTmpFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaMidTmpFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$MidTmpFcstApiBodyCopyWithImpl<$Res>
    implements _$MidTmpFcstApiBodyCopyWith<$Res> {
  __$MidTmpFcstApiBodyCopyWithImpl(this._self, this._then);

  final _MidTmpFcstApiBody _self;
  final $Res Function(_MidTmpFcstApiBody) _then;

/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_MidTmpFcstApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaMidTmpFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaMidTmpFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaMidTmpFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}

KmaMidTmpFcstApiItems _$KmaMidTmpFcstApiItemsFromJson(
  Map<String, dynamic> json
) {
    return _MidTmpFcstApiItems.fromJson(
      json
    );
}

/// @nodoc
mixin _$KmaMidTmpFcstApiItems {

@JsonKey(name: 'item') List<KmaMidTmpFcstApiItem> get item;
/// Create a copy of KmaMidTmpFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiItemsCopyWith<KmaMidTmpFcstApiItems> get copyWith => _$KmaMidTmpFcstApiItemsCopyWithImpl<KmaMidTmpFcstApiItems>(this as KmaMidTmpFcstApiItems, _$identity);

  /// Serializes this KmaMidTmpFcstApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaMidTmpFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiItemsCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiItemsCopyWith(KmaMidTmpFcstApiItems value, $Res Function(KmaMidTmpFcstApiItems) _then) = _$KmaMidTmpFcstApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidTmpFcstApiItem> item
});




}
/// @nodoc
class _$KmaMidTmpFcstApiItemsCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiItemsCopyWith<$Res> {
  _$KmaMidTmpFcstApiItemsCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiItems _self;
  final $Res Function(KmaMidTmpFcstApiItems) _then;

/// Create a copy of KmaMidTmpFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidTmpFcstApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiItems].
extension KmaMidTmpFcstApiItemsPatterns on KmaMidTmpFcstApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MidTmpFcstApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MidTmpFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MidTmpFcstApiItems value)  $default,){
final _that = this;
switch (_that) {
case _MidTmpFcstApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MidTmpFcstApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _MidTmpFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidTmpFcstApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MidTmpFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidTmpFcstApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _MidTmpFcstApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaMidTmpFcstApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _MidTmpFcstApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MidTmpFcstApiItems implements KmaMidTmpFcstApiItems {
  const _MidTmpFcstApiItems({@JsonKey(name: 'item') required final  List<KmaMidTmpFcstApiItem> item}): _item = item;
  factory _MidTmpFcstApiItems.fromJson(Map<String, dynamic> json) => _$MidTmpFcstApiItemsFromJson(json);

 final  List<KmaMidTmpFcstApiItem> _item;
@override@JsonKey(name: 'item') List<KmaMidTmpFcstApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaMidTmpFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MidTmpFcstApiItemsCopyWith<_MidTmpFcstApiItems> get copyWith => __$MidTmpFcstApiItemsCopyWithImpl<_MidTmpFcstApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MidTmpFcstApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MidTmpFcstApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaMidTmpFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$MidTmpFcstApiItemsCopyWith<$Res> implements $KmaMidTmpFcstApiItemsCopyWith<$Res> {
  factory _$MidTmpFcstApiItemsCopyWith(_MidTmpFcstApiItems value, $Res Function(_MidTmpFcstApiItems) _then) = __$MidTmpFcstApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidTmpFcstApiItem> item
});




}
/// @nodoc
class __$MidTmpFcstApiItemsCopyWithImpl<$Res>
    implements _$MidTmpFcstApiItemsCopyWith<$Res> {
  __$MidTmpFcstApiItemsCopyWithImpl(this._self, this._then);

  final _MidTmpFcstApiItems _self;
  final $Res Function(_MidTmpFcstApiItems) _then;

/// Create a copy of KmaMidTmpFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_MidTmpFcstApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidTmpFcstApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaMidTmpFcstApiItem {

 String get regId;// 지역 코드 (예: 11B10101)
@JsonKey(name: 'taMin4') double? get taMin4;@JsonKey(name: 'taMax4') double? get taMax4;@JsonKey(name: 'taMin5') double? get taMin5;@JsonKey(name: 'taMax5') double? get taMax5;@JsonKey(name: 'taMin6') double? get taMin6;@JsonKey(name: 'taMax6') double? get taMax6;@JsonKey(name: 'taMin7') double? get taMin7;@JsonKey(name: 'taMax7') double? get taMax7;
/// Create a copy of KmaMidTmpFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidTmpFcstApiItemCopyWith<KmaMidTmpFcstApiItem> get copyWith => _$KmaMidTmpFcstApiItemCopyWithImpl<KmaMidTmpFcstApiItem>(this as KmaMidTmpFcstApiItem, _$identity);

  /// Serializes this KmaMidTmpFcstApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidTmpFcstApiItem&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.taMin4, taMin4) || other.taMin4 == taMin4)&&(identical(other.taMax4, taMax4) || other.taMax4 == taMax4)&&(identical(other.taMin5, taMin5) || other.taMin5 == taMin5)&&(identical(other.taMax5, taMax5) || other.taMax5 == taMax5)&&(identical(other.taMin6, taMin6) || other.taMin6 == taMin6)&&(identical(other.taMax6, taMax6) || other.taMax6 == taMax6)&&(identical(other.taMin7, taMin7) || other.taMin7 == taMin7)&&(identical(other.taMax7, taMax7) || other.taMax7 == taMax7));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regId,taMin4,taMax4,taMin5,taMax5,taMin6,taMax6,taMin7,taMax7);

@override
String toString() {
  return 'KmaMidTmpFcstApiItem(regId: $regId, taMin4: $taMin4, taMax4: $taMax4, taMin5: $taMin5, taMax5: $taMax5, taMin6: $taMin6, taMax6: $taMax6, taMin7: $taMin7, taMax7: $taMax7)';
}


}

/// @nodoc
abstract mixin class $KmaMidTmpFcstApiItemCopyWith<$Res>  {
  factory $KmaMidTmpFcstApiItemCopyWith(KmaMidTmpFcstApiItem value, $Res Function(KmaMidTmpFcstApiItem) _then) = _$KmaMidTmpFcstApiItemCopyWithImpl;
@useResult
$Res call({
 String regId,@JsonKey(name: 'taMin4') double? taMin4,@JsonKey(name: 'taMax4') double? taMax4,@JsonKey(name: 'taMin5') double? taMin5,@JsonKey(name: 'taMax5') double? taMax5,@JsonKey(name: 'taMin6') double? taMin6,@JsonKey(name: 'taMax6') double? taMax6,@JsonKey(name: 'taMin7') double? taMin7,@JsonKey(name: 'taMax7') double? taMax7
});




}
/// @nodoc
class _$KmaMidTmpFcstApiItemCopyWithImpl<$Res>
    implements $KmaMidTmpFcstApiItemCopyWith<$Res> {
  _$KmaMidTmpFcstApiItemCopyWithImpl(this._self, this._then);

  final KmaMidTmpFcstApiItem _self;
  final $Res Function(KmaMidTmpFcstApiItem) _then;

/// Create a copy of KmaMidTmpFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regId = null,Object? taMin4 = freezed,Object? taMax4 = freezed,Object? taMin5 = freezed,Object? taMax5 = freezed,Object? taMin6 = freezed,Object? taMax6 = freezed,Object? taMin7 = freezed,Object? taMax7 = freezed,}) {
  return _then(_self.copyWith(
regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,taMin4: freezed == taMin4 ? _self.taMin4 : taMin4 // ignore: cast_nullable_to_non_nullable
as double?,taMax4: freezed == taMax4 ? _self.taMax4 : taMax4 // ignore: cast_nullable_to_non_nullable
as double?,taMin5: freezed == taMin5 ? _self.taMin5 : taMin5 // ignore: cast_nullable_to_non_nullable
as double?,taMax5: freezed == taMax5 ? _self.taMax5 : taMax5 // ignore: cast_nullable_to_non_nullable
as double?,taMin6: freezed == taMin6 ? _self.taMin6 : taMin6 // ignore: cast_nullable_to_non_nullable
as double?,taMax6: freezed == taMax6 ? _self.taMax6 : taMax6 // ignore: cast_nullable_to_non_nullable
as double?,taMin7: freezed == taMin7 ? _self.taMin7 : taMin7 // ignore: cast_nullable_to_non_nullable
as double?,taMax7: freezed == taMax7 ? _self.taMax7 : taMax7 // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidTmpFcstApiItem].
extension KmaMidTmpFcstApiItemPatterns on KmaMidTmpFcstApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidTmpFcstApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidTmpFcstApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String regId, @JsonKey(name: 'taMin4')  double? taMin4, @JsonKey(name: 'taMax4')  double? taMax4, @JsonKey(name: 'taMin5')  double? taMin5, @JsonKey(name: 'taMax5')  double? taMax5, @JsonKey(name: 'taMin6')  double? taMin6, @JsonKey(name: 'taMax6')  double? taMax6, @JsonKey(name: 'taMin7')  double? taMin7, @JsonKey(name: 'taMax7')  double? taMax7)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem() when $default != null:
return $default(_that.regId,_that.taMin4,_that.taMax4,_that.taMin5,_that.taMax5,_that.taMin6,_that.taMax6,_that.taMin7,_that.taMax7);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String regId, @JsonKey(name: 'taMin4')  double? taMin4, @JsonKey(name: 'taMax4')  double? taMax4, @JsonKey(name: 'taMin5')  double? taMin5, @JsonKey(name: 'taMax5')  double? taMax5, @JsonKey(name: 'taMin6')  double? taMin6, @JsonKey(name: 'taMax6')  double? taMax6, @JsonKey(name: 'taMin7')  double? taMin7, @JsonKey(name: 'taMax7')  double? taMax7)  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem():
return $default(_that.regId,_that.taMin4,_that.taMax4,_that.taMin5,_that.taMax5,_that.taMin6,_that.taMax6,_that.taMin7,_that.taMax7);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String regId, @JsonKey(name: 'taMin4')  double? taMin4, @JsonKey(name: 'taMax4')  double? taMax4, @JsonKey(name: 'taMin5')  double? taMin5, @JsonKey(name: 'taMax5')  double? taMax5, @JsonKey(name: 'taMin6')  double? taMin6, @JsonKey(name: 'taMax6')  double? taMax6, @JsonKey(name: 'taMin7')  double? taMin7, @JsonKey(name: 'taMax7')  double? taMax7)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidTmpFcstApiItem() when $default != null:
return $default(_that.regId,_that.taMin4,_that.taMax4,_that.taMin5,_that.taMax5,_that.taMin6,_that.taMax6,_that.taMin7,_that.taMax7);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidTmpFcstApiItem implements KmaMidTmpFcstApiItem {
  const _KmaMidTmpFcstApiItem({required this.regId, @JsonKey(name: 'taMin4') this.taMin4, @JsonKey(name: 'taMax4') this.taMax4, @JsonKey(name: 'taMin5') this.taMin5, @JsonKey(name: 'taMax5') this.taMax5, @JsonKey(name: 'taMin6') this.taMin6, @JsonKey(name: 'taMax6') this.taMax6, @JsonKey(name: 'taMin7') this.taMin7, @JsonKey(name: 'taMax7') this.taMax7});
  factory _KmaMidTmpFcstApiItem.fromJson(Map<String, dynamic> json) => _$KmaMidTmpFcstApiItemFromJson(json);

@override final  String regId;
// 지역 코드 (예: 11B10101)
@override@JsonKey(name: 'taMin4') final  double? taMin4;
@override@JsonKey(name: 'taMax4') final  double? taMax4;
@override@JsonKey(name: 'taMin5') final  double? taMin5;
@override@JsonKey(name: 'taMax5') final  double? taMax5;
@override@JsonKey(name: 'taMin6') final  double? taMin6;
@override@JsonKey(name: 'taMax6') final  double? taMax6;
@override@JsonKey(name: 'taMin7') final  double? taMin7;
@override@JsonKey(name: 'taMax7') final  double? taMax7;

/// Create a copy of KmaMidTmpFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidTmpFcstApiItemCopyWith<_KmaMidTmpFcstApiItem> get copyWith => __$KmaMidTmpFcstApiItemCopyWithImpl<_KmaMidTmpFcstApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidTmpFcstApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidTmpFcstApiItem&&(identical(other.regId, regId) || other.regId == regId)&&(identical(other.taMin4, taMin4) || other.taMin4 == taMin4)&&(identical(other.taMax4, taMax4) || other.taMax4 == taMax4)&&(identical(other.taMin5, taMin5) || other.taMin5 == taMin5)&&(identical(other.taMax5, taMax5) || other.taMax5 == taMax5)&&(identical(other.taMin6, taMin6) || other.taMin6 == taMin6)&&(identical(other.taMax6, taMax6) || other.taMax6 == taMax6)&&(identical(other.taMin7, taMin7) || other.taMin7 == taMin7)&&(identical(other.taMax7, taMax7) || other.taMax7 == taMax7));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,regId,taMin4,taMax4,taMin5,taMax5,taMin6,taMax6,taMin7,taMax7);

@override
String toString() {
  return 'KmaMidTmpFcstApiItem(regId: $regId, taMin4: $taMin4, taMax4: $taMax4, taMin5: $taMin5, taMax5: $taMax5, taMin6: $taMin6, taMax6: $taMax6, taMin7: $taMin7, taMax7: $taMax7)';
}


}

/// @nodoc
abstract mixin class _$KmaMidTmpFcstApiItemCopyWith<$Res> implements $KmaMidTmpFcstApiItemCopyWith<$Res> {
  factory _$KmaMidTmpFcstApiItemCopyWith(_KmaMidTmpFcstApiItem value, $Res Function(_KmaMidTmpFcstApiItem) _then) = __$KmaMidTmpFcstApiItemCopyWithImpl;
@override @useResult
$Res call({
 String regId,@JsonKey(name: 'taMin4') double? taMin4,@JsonKey(name: 'taMax4') double? taMax4,@JsonKey(name: 'taMin5') double? taMin5,@JsonKey(name: 'taMax5') double? taMax5,@JsonKey(name: 'taMin6') double? taMin6,@JsonKey(name: 'taMax6') double? taMax6,@JsonKey(name: 'taMin7') double? taMin7,@JsonKey(name: 'taMax7') double? taMax7
});




}
/// @nodoc
class __$KmaMidTmpFcstApiItemCopyWithImpl<$Res>
    implements _$KmaMidTmpFcstApiItemCopyWith<$Res> {
  __$KmaMidTmpFcstApiItemCopyWithImpl(this._self, this._then);

  final _KmaMidTmpFcstApiItem _self;
  final $Res Function(_KmaMidTmpFcstApiItem) _then;

/// Create a copy of KmaMidTmpFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regId = null,Object? taMin4 = freezed,Object? taMax4 = freezed,Object? taMin5 = freezed,Object? taMax5 = freezed,Object? taMin6 = freezed,Object? taMax6 = freezed,Object? taMin7 = freezed,Object? taMax7 = freezed,}) {
  return _then(_KmaMidTmpFcstApiItem(
regId: null == regId ? _self.regId : regId // ignore: cast_nullable_to_non_nullable
as String,taMin4: freezed == taMin4 ? _self.taMin4 : taMin4 // ignore: cast_nullable_to_non_nullable
as double?,taMax4: freezed == taMax4 ? _self.taMax4 : taMax4 // ignore: cast_nullable_to_non_nullable
as double?,taMin5: freezed == taMin5 ? _self.taMin5 : taMin5 // ignore: cast_nullable_to_non_nullable
as double?,taMax5: freezed == taMax5 ? _self.taMax5 : taMax5 // ignore: cast_nullable_to_non_nullable
as double?,taMin6: freezed == taMin6 ? _self.taMin6 : taMin6 // ignore: cast_nullable_to_non_nullable
as double?,taMax6: freezed == taMax6 ? _self.taMax6 : taMax6 // ignore: cast_nullable_to_non_nullable
as double?,taMin7: freezed == taMin7 ? _self.taMin7 : taMin7 // ignore: cast_nullable_to_non_nullable
as double?,taMax7: freezed == taMax7 ? _self.taMax7 : taMax7 // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
