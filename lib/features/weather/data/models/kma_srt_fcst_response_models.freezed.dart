// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_srt_fcst_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaSrtFcstApiResponse {

@JsonKey(name: 'response') KmaSrtFcstApiResult get result;
/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiResponseCopyWith<KmaSrtFcstApiResponse> get copyWith => _$KmaSrtFcstApiResponseCopyWithImpl<KmaSrtFcstApiResponse>(this as KmaSrtFcstApiResponse, _$identity);

  /// Serializes this KmaSrtFcstApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'KmaSrtFcstApiResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiResponseCopyWith<$Res>  {
  factory $KmaSrtFcstApiResponseCopyWith(KmaSrtFcstApiResponse value, $Res Function(KmaSrtFcstApiResponse) _then) = _$KmaSrtFcstApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') KmaSrtFcstApiResult result
});


$KmaSrtFcstApiResultCopyWith<$Res> get result;

}
/// @nodoc
class _$KmaSrtFcstApiResponseCopyWithImpl<$Res>
    implements $KmaSrtFcstApiResponseCopyWith<$Res> {
  _$KmaSrtFcstApiResponseCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiResponse _self;
  final $Res Function(KmaSrtFcstApiResponse) _then;

/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiResult,
  ));
}
/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiResultCopyWith<$Res> get result {
  
  return $KmaSrtFcstApiResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaSrtFcstApiResponse].
extension KmaSrtFcstApiResponsePatterns on KmaSrtFcstApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaSrtFcstApiResult result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaSrtFcstApiResult result)  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaSrtFcstApiResult result)?  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiResponse implements KmaSrtFcstApiResponse {
  const _KmaSrtFcstApiResponse({@JsonKey(name: 'response') required this.result});
  factory _KmaSrtFcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaSrtFcstApiResult result;

/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiResponseCopyWith<_KmaSrtFcstApiResponse> get copyWith => __$KmaSrtFcstApiResponseCopyWithImpl<_KmaSrtFcstApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'KmaSrtFcstApiResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiResponseCopyWith<$Res> implements $KmaSrtFcstApiResponseCopyWith<$Res> {
  factory _$KmaSrtFcstApiResponseCopyWith(_KmaSrtFcstApiResponse value, $Res Function(_KmaSrtFcstApiResponse) _then) = __$KmaSrtFcstApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') KmaSrtFcstApiResult result
});


@override $KmaSrtFcstApiResultCopyWith<$Res> get result;

}
/// @nodoc
class __$KmaSrtFcstApiResponseCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiResponseCopyWith<$Res> {
  __$KmaSrtFcstApiResponseCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiResponse _self;
  final $Res Function(_KmaSrtFcstApiResponse) _then;

/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_KmaSrtFcstApiResponse(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiResult,
  ));
}

/// Create a copy of KmaSrtFcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiResultCopyWith<$Res> get result {
  
  return $KmaSrtFcstApiResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// @nodoc
mixin _$KmaSrtFcstApiResult {

@JsonKey(name: 'header') KmaSrtFcstApiHeader get header;@JsonKey(name: 'body') KmaSrtFcstApiBody get body;
/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiResultCopyWith<KmaSrtFcstApiResult> get copyWith => _$KmaSrtFcstApiResultCopyWithImpl<KmaSrtFcstApiResult>(this as KmaSrtFcstApiResult, _$identity);

  /// Serializes this KmaSrtFcstApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaSrtFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiResultCopyWith<$Res>  {
  factory $KmaSrtFcstApiResultCopyWith(KmaSrtFcstApiResult value, $Res Function(KmaSrtFcstApiResult) _then) = _$KmaSrtFcstApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaSrtFcstApiHeader header,@JsonKey(name: 'body') KmaSrtFcstApiBody body
});


$KmaSrtFcstApiHeaderCopyWith<$Res> get header;$KmaSrtFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaSrtFcstApiResultCopyWithImpl<$Res>
    implements $KmaSrtFcstApiResultCopyWith<$Res> {
  _$KmaSrtFcstApiResultCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiResult _self;
  final $Res Function(KmaSrtFcstApiResult) _then;

/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiBody,
  ));
}
/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaSrtFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaSrtFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaSrtFcstApiResult].
extension KmaSrtFcstApiResultPatterns on KmaSrtFcstApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaSrtFcstApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaSrtFcstApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaSrtFcstApiHeader header, @JsonKey(name: 'body')  KmaSrtFcstApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiResult implements KmaSrtFcstApiResult {
  const _KmaSrtFcstApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaSrtFcstApiResult.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaSrtFcstApiHeader header;
@override@JsonKey(name: 'body') final  KmaSrtFcstApiBody body;

/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiResultCopyWith<_KmaSrtFcstApiResult> get copyWith => __$KmaSrtFcstApiResultCopyWithImpl<_KmaSrtFcstApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaSrtFcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiResultCopyWith<$Res> implements $KmaSrtFcstApiResultCopyWith<$Res> {
  factory _$KmaSrtFcstApiResultCopyWith(_KmaSrtFcstApiResult value, $Res Function(_KmaSrtFcstApiResult) _then) = __$KmaSrtFcstApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaSrtFcstApiHeader header,@JsonKey(name: 'body') KmaSrtFcstApiBody body
});


@override $KmaSrtFcstApiHeaderCopyWith<$Res> get header;@override $KmaSrtFcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaSrtFcstApiResultCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiResultCopyWith<$Res> {
  __$KmaSrtFcstApiResultCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiResult _self;
  final $Res Function(_KmaSrtFcstApiResult) _then;

/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaSrtFcstApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiBody,
  ));
}

/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaSrtFcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaSrtFcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiBodyCopyWith<$Res> get body {
  
  return $KmaSrtFcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaSrtFcstApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiHeaderCopyWith<KmaSrtFcstApiHeader> get copyWith => _$KmaSrtFcstApiHeaderCopyWithImpl<KmaSrtFcstApiHeader>(this as KmaSrtFcstApiHeader, _$identity);

  /// Serializes this KmaSrtFcstApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaSrtFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiHeaderCopyWith<$Res>  {
  factory $KmaSrtFcstApiHeaderCopyWith(KmaSrtFcstApiHeader value, $Res Function(KmaSrtFcstApiHeader) _then) = _$KmaSrtFcstApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaSrtFcstApiHeaderCopyWithImpl<$Res>
    implements $KmaSrtFcstApiHeaderCopyWith<$Res> {
  _$KmaSrtFcstApiHeaderCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiHeader _self;
  final $Res Function(KmaSrtFcstApiHeader) _then;

/// Create a copy of KmaSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaSrtFcstApiHeader].
extension KmaSrtFcstApiHeaderPatterns on KmaSrtFcstApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiHeader() when $default != null:
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
case _KmaSrtFcstApiHeader() when $default != null:
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
case _KmaSrtFcstApiHeader():
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
case _KmaSrtFcstApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiHeader implements KmaSrtFcstApiHeader {
  const _KmaSrtFcstApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaSrtFcstApiHeader.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiHeaderCopyWith<_KmaSrtFcstApiHeader> get copyWith => __$KmaSrtFcstApiHeaderCopyWithImpl<_KmaSrtFcstApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaSrtFcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiHeaderCopyWith<$Res> implements $KmaSrtFcstApiHeaderCopyWith<$Res> {
  factory _$KmaSrtFcstApiHeaderCopyWith(_KmaSrtFcstApiHeader value, $Res Function(_KmaSrtFcstApiHeader) _then) = __$KmaSrtFcstApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaSrtFcstApiHeaderCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiHeaderCopyWith<$Res> {
  __$KmaSrtFcstApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiHeader _self;
  final $Res Function(_KmaSrtFcstApiHeader) _then;

/// Create a copy of KmaSrtFcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaSrtFcstApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaSrtFcstApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaSrtFcstApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiBodyCopyWith<KmaSrtFcstApiBody> get copyWith => _$KmaSrtFcstApiBodyCopyWithImpl<KmaSrtFcstApiBody>(this as KmaSrtFcstApiBody, _$identity);

  /// Serializes this KmaSrtFcstApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaSrtFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiBodyCopyWith<$Res>  {
  factory $KmaSrtFcstApiBodyCopyWith(KmaSrtFcstApiBody value, $Res Function(KmaSrtFcstApiBody) _then) = _$KmaSrtFcstApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaSrtFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaSrtFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaSrtFcstApiBodyCopyWithImpl<$Res>
    implements $KmaSrtFcstApiBodyCopyWith<$Res> {
  _$KmaSrtFcstApiBodyCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiBody _self;
  final $Res Function(KmaSrtFcstApiBody) _then;

/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaSrtFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaSrtFcstApiBody].
extension KmaSrtFcstApiBodyPatterns on KmaSrtFcstApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaSrtFcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiBody implements KmaSrtFcstApiBody {
  const _KmaSrtFcstApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _KmaSrtFcstApiBody.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaSrtFcstApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiBodyCopyWith<_KmaSrtFcstApiBody> get copyWith => __$KmaSrtFcstApiBodyCopyWithImpl<_KmaSrtFcstApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaSrtFcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiBodyCopyWith<$Res> implements $KmaSrtFcstApiBodyCopyWith<$Res> {
  factory _$KmaSrtFcstApiBodyCopyWith(_KmaSrtFcstApiBody value, $Res Function(_KmaSrtFcstApiBody) _then) = __$KmaSrtFcstApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaSrtFcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaSrtFcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaSrtFcstApiBodyCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiBodyCopyWith<$Res> {
  __$KmaSrtFcstApiBodyCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiBody _self;
  final $Res Function(_KmaSrtFcstApiBody) _then;

/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaSrtFcstApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaSrtFcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaSrtFcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaSrtFcstApiItemsCopyWith<$Res> get items {
  
  return $KmaSrtFcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaSrtFcstApiItems {

@JsonKey(name: 'item') List<KmaSrtFcstApiItem> get item;
/// Create a copy of KmaSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiItemsCopyWith<KmaSrtFcstApiItems> get copyWith => _$KmaSrtFcstApiItemsCopyWithImpl<KmaSrtFcstApiItems>(this as KmaSrtFcstApiItems, _$identity);

  /// Serializes this KmaSrtFcstApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaSrtFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiItemsCopyWith<$Res>  {
  factory $KmaSrtFcstApiItemsCopyWith(KmaSrtFcstApiItems value, $Res Function(KmaSrtFcstApiItems) _then) = _$KmaSrtFcstApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaSrtFcstApiItem> item
});




}
/// @nodoc
class _$KmaSrtFcstApiItemsCopyWithImpl<$Res>
    implements $KmaSrtFcstApiItemsCopyWith<$Res> {
  _$KmaSrtFcstApiItemsCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiItems _self;
  final $Res Function(KmaSrtFcstApiItems) _then;

/// Create a copy of KmaSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaSrtFcstApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaSrtFcstApiItems].
extension KmaSrtFcstApiItemsPatterns on KmaSrtFcstApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaSrtFcstApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaSrtFcstApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaSrtFcstApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaSrtFcstApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiItems implements KmaSrtFcstApiItems {
  const _KmaSrtFcstApiItems({@JsonKey(name: 'item') required final  List<KmaSrtFcstApiItem> item}): _item = item;
  factory _KmaSrtFcstApiItems.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiItemsFromJson(json);

 final  List<KmaSrtFcstApiItem> _item;
@override@JsonKey(name: 'item') List<KmaSrtFcstApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiItemsCopyWith<_KmaSrtFcstApiItems> get copyWith => __$KmaSrtFcstApiItemsCopyWithImpl<_KmaSrtFcstApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaSrtFcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiItemsCopyWith<$Res> implements $KmaSrtFcstApiItemsCopyWith<$Res> {
  factory _$KmaSrtFcstApiItemsCopyWith(_KmaSrtFcstApiItems value, $Res Function(_KmaSrtFcstApiItems) _then) = __$KmaSrtFcstApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaSrtFcstApiItem> item
});




}
/// @nodoc
class __$KmaSrtFcstApiItemsCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiItemsCopyWith<$Res> {
  __$KmaSrtFcstApiItemsCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiItems _self;
  final $Res Function(_KmaSrtFcstApiItems) _then;

/// Create a copy of KmaSrtFcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaSrtFcstApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaSrtFcstApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaSrtFcstApiItem {

@JsonKey(name: 'baseDate') String get baseDate;@JsonKey(name: 'baseTime') String get baseTime;@JsonKey(name: 'category') String get category;@JsonKey(name: 'fcstDate') String get fcstDate;@JsonKey(name: 'fcstTime') String get fcstTime;@JsonKey(name: 'fcstValue') String get fcstValue;@JsonKey(name: 'nx') int get nx;@JsonKey(name: 'ny') int get ny;
/// Create a copy of KmaSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaSrtFcstApiItemCopyWith<KmaSrtFcstApiItem> get copyWith => _$KmaSrtFcstApiItemCopyWithImpl<KmaSrtFcstApiItem>(this as KmaSrtFcstApiItem, _$identity);

  /// Serializes this KmaSrtFcstApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaSrtFcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaSrtFcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class $KmaSrtFcstApiItemCopyWith<$Res>  {
  factory $KmaSrtFcstApiItemCopyWith(KmaSrtFcstApiItem value, $Res Function(KmaSrtFcstApiItem) _then) = _$KmaSrtFcstApiItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'fcstDate') String fcstDate,@JsonKey(name: 'fcstTime') String fcstTime,@JsonKey(name: 'fcstValue') String fcstValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class _$KmaSrtFcstApiItemCopyWithImpl<$Res>
    implements $KmaSrtFcstApiItemCopyWith<$Res> {
  _$KmaSrtFcstApiItemCopyWithImpl(this._self, this._then);

  final KmaSrtFcstApiItem _self;
  final $Res Function(KmaSrtFcstApiItem) _then;

/// Create a copy of KmaSrtFcstApiItem
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


/// Adds pattern-matching-related methods to [KmaSrtFcstApiItem].
extension KmaSrtFcstApiItemPatterns on KmaSrtFcstApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaSrtFcstApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaSrtFcstApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaSrtFcstApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaSrtFcstApiItem() when $default != null:
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
case _KmaSrtFcstApiItem() when $default != null:
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
case _KmaSrtFcstApiItem():
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
case _KmaSrtFcstApiItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.fcstDate,_that.fcstTime,_that.fcstValue,_that.nx,_that.ny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaSrtFcstApiItem implements KmaSrtFcstApiItem {
  const _KmaSrtFcstApiItem({@JsonKey(name: 'baseDate') required this.baseDate, @JsonKey(name: 'baseTime') required this.baseTime, @JsonKey(name: 'category') required this.category, @JsonKey(name: 'fcstDate') required this.fcstDate, @JsonKey(name: 'fcstTime') required this.fcstTime, @JsonKey(name: 'fcstValue') required this.fcstValue, @JsonKey(name: 'nx') required this.nx, @JsonKey(name: 'ny') required this.ny});
  factory _KmaSrtFcstApiItem.fromJson(Map<String, dynamic> json) => _$KmaSrtFcstApiItemFromJson(json);

@override@JsonKey(name: 'baseDate') final  String baseDate;
@override@JsonKey(name: 'baseTime') final  String baseTime;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'fcstDate') final  String fcstDate;
@override@JsonKey(name: 'fcstTime') final  String fcstTime;
@override@JsonKey(name: 'fcstValue') final  String fcstValue;
@override@JsonKey(name: 'nx') final  int nx;
@override@JsonKey(name: 'ny') final  int ny;

/// Create a copy of KmaSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaSrtFcstApiItemCopyWith<_KmaSrtFcstApiItem> get copyWith => __$KmaSrtFcstApiItemCopyWithImpl<_KmaSrtFcstApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaSrtFcstApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaSrtFcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.fcstDate, fcstDate) || other.fcstDate == fcstDate)&&(identical(other.fcstTime, fcstTime) || other.fcstTime == fcstTime)&&(identical(other.fcstValue, fcstValue) || other.fcstValue == fcstValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,fcstDate,fcstTime,fcstValue,nx,ny);

@override
String toString() {
  return 'KmaSrtFcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, fcstDate: $fcstDate, fcstTime: $fcstTime, fcstValue: $fcstValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class _$KmaSrtFcstApiItemCopyWith<$Res> implements $KmaSrtFcstApiItemCopyWith<$Res> {
  factory _$KmaSrtFcstApiItemCopyWith(_KmaSrtFcstApiItem value, $Res Function(_KmaSrtFcstApiItem) _then) = __$KmaSrtFcstApiItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'fcstDate') String fcstDate,@JsonKey(name: 'fcstTime') String fcstTime,@JsonKey(name: 'fcstValue') String fcstValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class __$KmaSrtFcstApiItemCopyWithImpl<$Res>
    implements _$KmaSrtFcstApiItemCopyWith<$Res> {
  __$KmaSrtFcstApiItemCopyWithImpl(this._self, this._then);

  final _KmaSrtFcstApiItem _self;
  final $Res Function(_KmaSrtFcstApiItem) _then;

/// Create a copy of KmaSrtFcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? fcstDate = null,Object? fcstTime = null,Object? fcstValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_KmaSrtFcstApiItem(
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
