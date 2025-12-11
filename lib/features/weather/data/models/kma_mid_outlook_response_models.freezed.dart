// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_mid_outlook_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaMidOutlookApiResponse {

@JsonKey(name: 'response') KmaMidOutlookApiResult get response;
/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidOutlookApiResponseCopyWith<KmaMidOutlookApiResponse> get copyWith => _$KmaMidOutlookApiResponseCopyWithImpl<KmaMidOutlookApiResponse>(this as KmaMidOutlookApiResponse, _$identity);

  /// Serializes this KmaMidOutlookApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidOutlookApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidOutlookApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class $KmaMidOutlookApiResponseCopyWith<$Res>  {
  factory $KmaMidOutlookApiResponseCopyWith(KmaMidOutlookApiResponse value, $Res Function(KmaMidOutlookApiResponse) _then) = _$KmaMidOutlookApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') KmaMidOutlookApiResult response
});


$KmaMidOutlookApiResultCopyWith<$Res> get response;

}
/// @nodoc
class _$KmaMidOutlookApiResponseCopyWithImpl<$Res>
    implements $KmaMidOutlookApiResponseCopyWith<$Res> {
  _$KmaMidOutlookApiResponseCopyWithImpl(this._self, this._then);

  final KmaMidOutlookApiResponse _self;
  final $Res Function(KmaMidOutlookApiResponse) _then;

/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? response = null,}) {
  return _then(_self.copyWith(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiResult,
  ));
}
/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiResultCopyWith<$Res> get response {
  
  return $KmaMidOutlookApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidOutlookApiResponse].
extension KmaMidOutlookApiResponsePatterns on KmaMidOutlookApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidOutlookApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidOutlookApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidOutlookApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidOutlookApiResult response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaMidOutlookApiResult response)  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaMidOutlookApiResult response)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResponse() when $default != null:
return $default(_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidOutlookApiResponse implements KmaMidOutlookApiResponse {
  const _KmaMidOutlookApiResponse({@JsonKey(name: 'response') required this.response});
  factory _KmaMidOutlookApiResponse.fromJson(Map<String, dynamic> json) => _$KmaMidOutlookApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaMidOutlookApiResult response;

/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidOutlookApiResponseCopyWith<_KmaMidOutlookApiResponse> get copyWith => __$KmaMidOutlookApiResponseCopyWithImpl<_KmaMidOutlookApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidOutlookApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidOutlookApiResponse&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'KmaMidOutlookApiResponse(response: $response)';
}


}

/// @nodoc
abstract mixin class _$KmaMidOutlookApiResponseCopyWith<$Res> implements $KmaMidOutlookApiResponseCopyWith<$Res> {
  factory _$KmaMidOutlookApiResponseCopyWith(_KmaMidOutlookApiResponse value, $Res Function(_KmaMidOutlookApiResponse) _then) = __$KmaMidOutlookApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') KmaMidOutlookApiResult response
});


@override $KmaMidOutlookApiResultCopyWith<$Res> get response;

}
/// @nodoc
class __$KmaMidOutlookApiResponseCopyWithImpl<$Res>
    implements _$KmaMidOutlookApiResponseCopyWith<$Res> {
  __$KmaMidOutlookApiResponseCopyWithImpl(this._self, this._then);

  final _KmaMidOutlookApiResponse _self;
  final $Res Function(_KmaMidOutlookApiResponse) _then;

/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_KmaMidOutlookApiResponse(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiResult,
  ));
}

/// Create a copy of KmaMidOutlookApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiResultCopyWith<$Res> get response {
  
  return $KmaMidOutlookApiResultCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// @nodoc
mixin _$KmaMidOutlookApiResult {

@JsonKey(name: 'header') KmaMidOutlookApiHeader get header;@JsonKey(name: 'body') KmaMidOutlookApiBody get body;
/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidOutlookApiResultCopyWith<KmaMidOutlookApiResult> get copyWith => _$KmaMidOutlookApiResultCopyWithImpl<KmaMidOutlookApiResult>(this as KmaMidOutlookApiResult, _$identity);

  /// Serializes this KmaMidOutlookApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidOutlookApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidOutlookApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaMidOutlookApiResultCopyWith<$Res>  {
  factory $KmaMidOutlookApiResultCopyWith(KmaMidOutlookApiResult value, $Res Function(KmaMidOutlookApiResult) _then) = _$KmaMidOutlookApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaMidOutlookApiHeader header,@JsonKey(name: 'body') KmaMidOutlookApiBody body
});


$KmaMidOutlookApiHeaderCopyWith<$Res> get header;$KmaMidOutlookApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaMidOutlookApiResultCopyWithImpl<$Res>
    implements $KmaMidOutlookApiResultCopyWith<$Res> {
  _$KmaMidOutlookApiResultCopyWithImpl(this._self, this._then);

  final KmaMidOutlookApiResult _self;
  final $Res Function(KmaMidOutlookApiResult) _then;

/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiBody,
  ));
}
/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidOutlookApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiBodyCopyWith<$Res> get body {
  
  return $KmaMidOutlookApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidOutlookApiResult].
extension KmaMidOutlookApiResultPatterns on KmaMidOutlookApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidOutlookApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidOutlookApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidOutlookApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidOutlookApiHeader header, @JsonKey(name: 'body')  KmaMidOutlookApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaMidOutlookApiHeader header, @JsonKey(name: 'body')  KmaMidOutlookApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaMidOutlookApiHeader header, @JsonKey(name: 'body')  KmaMidOutlookApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidOutlookApiResult implements KmaMidOutlookApiResult {
  const _KmaMidOutlookApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaMidOutlookApiResult.fromJson(Map<String, dynamic> json) => _$KmaMidOutlookApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaMidOutlookApiHeader header;
@override@JsonKey(name: 'body') final  KmaMidOutlookApiBody body;

/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidOutlookApiResultCopyWith<_KmaMidOutlookApiResult> get copyWith => __$KmaMidOutlookApiResultCopyWithImpl<_KmaMidOutlookApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidOutlookApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidOutlookApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaMidOutlookApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaMidOutlookApiResultCopyWith<$Res> implements $KmaMidOutlookApiResultCopyWith<$Res> {
  factory _$KmaMidOutlookApiResultCopyWith(_KmaMidOutlookApiResult value, $Res Function(_KmaMidOutlookApiResult) _then) = __$KmaMidOutlookApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaMidOutlookApiHeader header,@JsonKey(name: 'body') KmaMidOutlookApiBody body
});


@override $KmaMidOutlookApiHeaderCopyWith<$Res> get header;@override $KmaMidOutlookApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaMidOutlookApiResultCopyWithImpl<$Res>
    implements _$KmaMidOutlookApiResultCopyWith<$Res> {
  __$KmaMidOutlookApiResultCopyWithImpl(this._self, this._then);

  final _KmaMidOutlookApiResult _self;
  final $Res Function(_KmaMidOutlookApiResult) _then;

/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaMidOutlookApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaMidOutlookApiBody,
  ));
}

/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiHeaderCopyWith<$Res> get header {
  
  return $KmaMidOutlookApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaMidOutlookApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaMidOutlookApiBodyCopyWith<$Res> get body {
  
  return $KmaMidOutlookApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaMidOutlookApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaMidOutlookApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidOutlookApiHeaderCopyWith<KmaMidOutlookApiHeader> get copyWith => _$KmaMidOutlookApiHeaderCopyWithImpl<KmaMidOutlookApiHeader>(this as KmaMidOutlookApiHeader, _$identity);

  /// Serializes this KmaMidOutlookApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidOutlookApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidOutlookApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaMidOutlookApiHeaderCopyWith<$Res>  {
  factory $KmaMidOutlookApiHeaderCopyWith(KmaMidOutlookApiHeader value, $Res Function(KmaMidOutlookApiHeader) _then) = _$KmaMidOutlookApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaMidOutlookApiHeaderCopyWithImpl<$Res>
    implements $KmaMidOutlookApiHeaderCopyWith<$Res> {
  _$KmaMidOutlookApiHeaderCopyWithImpl(this._self, this._then);

  final KmaMidOutlookApiHeader _self;
  final $Res Function(KmaMidOutlookApiHeader) _then;

/// Create a copy of KmaMidOutlookApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidOutlookApiHeader].
extension KmaMidOutlookApiHeaderPatterns on KmaMidOutlookApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidOutlookApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidOutlookApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidOutlookApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiHeader() when $default != null:
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
case _KmaMidOutlookApiHeader() when $default != null:
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
case _KmaMidOutlookApiHeader():
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
case _KmaMidOutlookApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidOutlookApiHeader implements KmaMidOutlookApiHeader {
  const _KmaMidOutlookApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaMidOutlookApiHeader.fromJson(Map<String, dynamic> json) => _$KmaMidOutlookApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaMidOutlookApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidOutlookApiHeaderCopyWith<_KmaMidOutlookApiHeader> get copyWith => __$KmaMidOutlookApiHeaderCopyWithImpl<_KmaMidOutlookApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidOutlookApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidOutlookApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaMidOutlookApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaMidOutlookApiHeaderCopyWith<$Res> implements $KmaMidOutlookApiHeaderCopyWith<$Res> {
  factory _$KmaMidOutlookApiHeaderCopyWith(_KmaMidOutlookApiHeader value, $Res Function(_KmaMidOutlookApiHeader) _then) = __$KmaMidOutlookApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaMidOutlookApiHeaderCopyWithImpl<$Res>
    implements _$KmaMidOutlookApiHeaderCopyWith<$Res> {
  __$KmaMidOutlookApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaMidOutlookApiHeader _self;
  final $Res Function(_KmaMidOutlookApiHeader) _then;

/// Create a copy of KmaMidOutlookApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaMidOutlookApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaMidOutlookApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaKmaMidOutlookApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidOutlookApiBodyCopyWith<KmaMidOutlookApiBody> get copyWith => _$KmaMidOutlookApiBodyCopyWithImpl<KmaMidOutlookApiBody>(this as KmaMidOutlookApiBody, _$identity);

  /// Serializes this KmaMidOutlookApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidOutlookApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidOutlookApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaMidOutlookApiBodyCopyWith<$Res>  {
  factory $KmaMidOutlookApiBodyCopyWith(KmaMidOutlookApiBody value, $Res Function(KmaMidOutlookApiBody) _then) = _$KmaMidOutlookApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaKmaMidOutlookApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaKmaMidOutlookApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaMidOutlookApiBodyCopyWithImpl<$Res>
    implements $KmaMidOutlookApiBodyCopyWith<$Res> {
  _$KmaMidOutlookApiBodyCopyWithImpl(this._self, this._then);

  final KmaMidOutlookApiBody _self;
  final $Res Function(KmaMidOutlookApiBody) _then;

/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaKmaMidOutlookApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaKmaMidOutlookApiItemsCopyWith<$Res> get items {
  
  return $KmaKmaMidOutlookApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaMidOutlookApiBody].
extension KmaMidOutlookApiBodyPatterns on KmaMidOutlookApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidOutlookApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidOutlookApiBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidOutlookApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaKmaMidOutlookApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaKmaMidOutlookApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaKmaMidOutlookApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidOutlookApiBody implements KmaMidOutlookApiBody {
  const _KmaMidOutlookApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _KmaMidOutlookApiBody.fromJson(Map<String, dynamic> json) => _$KmaMidOutlookApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaKmaMidOutlookApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidOutlookApiBodyCopyWith<_KmaMidOutlookApiBody> get copyWith => __$KmaMidOutlookApiBodyCopyWithImpl<_KmaMidOutlookApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidOutlookApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidOutlookApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaMidOutlookApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaMidOutlookApiBodyCopyWith<$Res> implements $KmaMidOutlookApiBodyCopyWith<$Res> {
  factory _$KmaMidOutlookApiBodyCopyWith(_KmaMidOutlookApiBody value, $Res Function(_KmaMidOutlookApiBody) _then) = __$KmaMidOutlookApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaKmaMidOutlookApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaKmaMidOutlookApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaMidOutlookApiBodyCopyWithImpl<$Res>
    implements _$KmaMidOutlookApiBodyCopyWith<$Res> {
  __$KmaMidOutlookApiBodyCopyWithImpl(this._self, this._then);

  final _KmaMidOutlookApiBody _self;
  final $Res Function(_KmaMidOutlookApiBody) _then;

/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaMidOutlookApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaKmaMidOutlookApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaMidOutlookApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaKmaMidOutlookApiItemsCopyWith<$Res> get items {
  
  return $KmaKmaMidOutlookApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaKmaMidOutlookApiItems {

@JsonKey(name: 'item') List<KmaMidOutlookApiItem> get item;
/// Create a copy of KmaKmaMidOutlookApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaKmaMidOutlookApiItemsCopyWith<KmaKmaMidOutlookApiItems> get copyWith => _$KmaKmaMidOutlookApiItemsCopyWithImpl<KmaKmaMidOutlookApiItems>(this as KmaKmaMidOutlookApiItems, _$identity);

  /// Serializes this KmaKmaMidOutlookApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaKmaMidOutlookApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaKmaMidOutlookApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaKmaMidOutlookApiItemsCopyWith<$Res>  {
  factory $KmaKmaMidOutlookApiItemsCopyWith(KmaKmaMidOutlookApiItems value, $Res Function(KmaKmaMidOutlookApiItems) _then) = _$KmaKmaMidOutlookApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidOutlookApiItem> item
});




}
/// @nodoc
class _$KmaKmaMidOutlookApiItemsCopyWithImpl<$Res>
    implements $KmaKmaMidOutlookApiItemsCopyWith<$Res> {
  _$KmaKmaMidOutlookApiItemsCopyWithImpl(this._self, this._then);

  final KmaKmaMidOutlookApiItems _self;
  final $Res Function(KmaKmaMidOutlookApiItems) _then;

/// Create a copy of KmaKmaMidOutlookApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidOutlookApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaKmaMidOutlookApiItems].
extension KmaKmaMidOutlookApiItemsPatterns on KmaKmaMidOutlookApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaKmaMidOutlookApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaKmaMidOutlookApiItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaKmaMidOutlookApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidOutlookApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaMidOutlookApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaMidOutlookApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaKmaMidOutlookApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaKmaMidOutlookApiItems implements KmaKmaMidOutlookApiItems {
  const _KmaKmaMidOutlookApiItems({@JsonKey(name: 'item') required final  List<KmaMidOutlookApiItem> item}): _item = item;
  factory _KmaKmaMidOutlookApiItems.fromJson(Map<String, dynamic> json) => _$KmaKmaMidOutlookApiItemsFromJson(json);

 final  List<KmaMidOutlookApiItem> _item;
@override@JsonKey(name: 'item') List<KmaMidOutlookApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaKmaMidOutlookApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaKmaMidOutlookApiItemsCopyWith<_KmaKmaMidOutlookApiItems> get copyWith => __$KmaKmaMidOutlookApiItemsCopyWithImpl<_KmaKmaMidOutlookApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaKmaMidOutlookApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaKmaMidOutlookApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaKmaMidOutlookApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaKmaMidOutlookApiItemsCopyWith<$Res> implements $KmaKmaMidOutlookApiItemsCopyWith<$Res> {
  factory _$KmaKmaMidOutlookApiItemsCopyWith(_KmaKmaMidOutlookApiItems value, $Res Function(_KmaKmaMidOutlookApiItems) _then) = __$KmaKmaMidOutlookApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaMidOutlookApiItem> item
});




}
/// @nodoc
class __$KmaKmaMidOutlookApiItemsCopyWithImpl<$Res>
    implements _$KmaKmaMidOutlookApiItemsCopyWith<$Res> {
  __$KmaKmaMidOutlookApiItemsCopyWithImpl(this._self, this._then);

  final _KmaKmaMidOutlookApiItems _self;
  final $Res Function(_KmaKmaMidOutlookApiItems) _then;

/// Create a copy of KmaKmaMidOutlookApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaKmaMidOutlookApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaMidOutlookApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaMidOutlookApiItem {

@JsonKey(name: 'wfSv') String get wfSv;
/// Create a copy of KmaMidOutlookApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaMidOutlookApiItemCopyWith<KmaMidOutlookApiItem> get copyWith => _$KmaMidOutlookApiItemCopyWithImpl<KmaMidOutlookApiItem>(this as KmaMidOutlookApiItem, _$identity);

  /// Serializes this KmaMidOutlookApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaMidOutlookApiItem&&(identical(other.wfSv, wfSv) || other.wfSv == wfSv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wfSv);

@override
String toString() {
  return 'KmaMidOutlookApiItem(wfSv: $wfSv)';
}


}

/// @nodoc
abstract mixin class $KmaMidOutlookApiItemCopyWith<$Res>  {
  factory $KmaMidOutlookApiItemCopyWith(KmaMidOutlookApiItem value, $Res Function(KmaMidOutlookApiItem) _then) = _$KmaMidOutlookApiItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'wfSv') String wfSv
});




}
/// @nodoc
class _$KmaMidOutlookApiItemCopyWithImpl<$Res>
    implements $KmaMidOutlookApiItemCopyWith<$Res> {
  _$KmaMidOutlookApiItemCopyWithImpl(this._self, this._then);

  final KmaMidOutlookApiItem _self;
  final $Res Function(KmaMidOutlookApiItem) _then;

/// Create a copy of KmaMidOutlookApiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wfSv = null,}) {
  return _then(_self.copyWith(
wfSv: null == wfSv ? _self.wfSv : wfSv // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaMidOutlookApiItem].
extension KmaMidOutlookApiItemPatterns on KmaMidOutlookApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaMidOutlookApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaMidOutlookApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaMidOutlookApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'wfSv')  String wfSv)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem() when $default != null:
return $default(_that.wfSv);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'wfSv')  String wfSv)  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem():
return $default(_that.wfSv);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'wfSv')  String wfSv)?  $default,) {final _that = this;
switch (_that) {
case _KmaMidOutlookApiItem() when $default != null:
return $default(_that.wfSv);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaMidOutlookApiItem implements KmaMidOutlookApiItem {
  const _KmaMidOutlookApiItem({@JsonKey(name: 'wfSv') required this.wfSv});
  factory _KmaMidOutlookApiItem.fromJson(Map<String, dynamic> json) => _$KmaMidOutlookApiItemFromJson(json);

@override@JsonKey(name: 'wfSv') final  String wfSv;

/// Create a copy of KmaMidOutlookApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaMidOutlookApiItemCopyWith<_KmaMidOutlookApiItem> get copyWith => __$KmaMidOutlookApiItemCopyWithImpl<_KmaMidOutlookApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaMidOutlookApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaMidOutlookApiItem&&(identical(other.wfSv, wfSv) || other.wfSv == wfSv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wfSv);

@override
String toString() {
  return 'KmaMidOutlookApiItem(wfSv: $wfSv)';
}


}

/// @nodoc
abstract mixin class _$KmaMidOutlookApiItemCopyWith<$Res> implements $KmaMidOutlookApiItemCopyWith<$Res> {
  factory _$KmaMidOutlookApiItemCopyWith(_KmaMidOutlookApiItem value, $Res Function(_KmaMidOutlookApiItem) _then) = __$KmaMidOutlookApiItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'wfSv') String wfSv
});




}
/// @nodoc
class __$KmaMidOutlookApiItemCopyWithImpl<$Res>
    implements _$KmaMidOutlookApiItemCopyWith<$Res> {
  __$KmaMidOutlookApiItemCopyWithImpl(this._self, this._then);

  final _KmaMidOutlookApiItem _self;
  final $Res Function(_KmaMidOutlookApiItem) _then;

/// Create a copy of KmaMidOutlookApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wfSv = null,}) {
  return _then(_KmaMidOutlookApiItem(
wfSv: null == wfSv ? _self.wfSv : wfSv // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
