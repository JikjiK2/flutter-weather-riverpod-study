// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kma_ultra_srt_ncst_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KmaUltraSrtNcstApiResponse {

@JsonKey(name: 'response') KmaUltraSrtNcstApiResult get result;
/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiResponseCopyWith<KmaUltraSrtNcstApiResponse> get copyWith => _$KmaUltraSrtNcstApiResponseCopyWithImpl<KmaUltraSrtNcstApiResponse>(this as KmaUltraSrtNcstApiResponse, _$identity);

  /// Serializes this KmaUltraSrtNcstApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'KmaUltraSrtNcstApiResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiResponseCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiResponseCopyWith(KmaUltraSrtNcstApiResponse value, $Res Function(KmaUltraSrtNcstApiResponse) _then) = _$KmaUltraSrtNcstApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') KmaUltraSrtNcstApiResult result
});


$KmaUltraSrtNcstApiResultCopyWith<$Res> get result;

}
/// @nodoc
class _$KmaUltraSrtNcstApiResponseCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiResponseCopyWith<$Res> {
  _$KmaUltraSrtNcstApiResponseCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiResponse _self;
  final $Res Function(KmaUltraSrtNcstApiResponse) _then;

/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiResult,
  ));
}
/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiResultCopyWith<$Res> get result {
  
  return $KmaUltraSrtNcstApiResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiResponse].
extension KmaUltraSrtNcstApiResponsePatterns on KmaUltraSrtNcstApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaUltraSrtNcstApiResult result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  KmaUltraSrtNcstApiResult result)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  KmaUltraSrtNcstApiResult result)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResponse() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiResponse extends KmaUltraSrtNcstApiResponse {
  const _KmaUltraSrtNcstApiResponse({@JsonKey(name: 'response') required this.result}): super._();
  factory _KmaUltraSrtNcstApiResponse.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiResponseFromJson(json);

@override@JsonKey(name: 'response') final  KmaUltraSrtNcstApiResult result;

/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiResponseCopyWith<_KmaUltraSrtNcstApiResponse> get copyWith => __$KmaUltraSrtNcstApiResponseCopyWithImpl<_KmaUltraSrtNcstApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiResponse&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'KmaUltraSrtNcstApiResponse(result: $result)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiResponseCopyWith<$Res> implements $KmaUltraSrtNcstApiResponseCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiResponseCopyWith(_KmaUltraSrtNcstApiResponse value, $Res Function(_KmaUltraSrtNcstApiResponse) _then) = __$KmaUltraSrtNcstApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') KmaUltraSrtNcstApiResult result
});


@override $KmaUltraSrtNcstApiResultCopyWith<$Res> get result;

}
/// @nodoc
class __$KmaUltraSrtNcstApiResponseCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiResponseCopyWith<$Res> {
  __$KmaUltraSrtNcstApiResponseCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiResponse _self;
  final $Res Function(_KmaUltraSrtNcstApiResponse) _then;

/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_KmaUltraSrtNcstApiResponse(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiResult,
  ));
}

/// Create a copy of KmaUltraSrtNcstApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiResultCopyWith<$Res> get result {
  
  return $KmaUltraSrtNcstApiResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtNcstApiResult {

@JsonKey(name: 'header') KmaUltraSrtNcstApiHeader get header;@JsonKey(name: 'body') KmaUltraSrtNcstApiBody get body;
/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiResultCopyWith<KmaUltraSrtNcstApiResult> get copyWith => _$KmaUltraSrtNcstApiResultCopyWithImpl<KmaUltraSrtNcstApiResult>(this as KmaUltraSrtNcstApiResult, _$identity);

  /// Serializes this KmaUltraSrtNcstApiResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtNcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiResultCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiResultCopyWith(KmaUltraSrtNcstApiResult value, $Res Function(KmaUltraSrtNcstApiResult) _then) = _$KmaUltraSrtNcstApiResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'header') KmaUltraSrtNcstApiHeader header,@JsonKey(name: 'body') KmaUltraSrtNcstApiBody body
});


$KmaUltraSrtNcstApiHeaderCopyWith<$Res> get header;$KmaUltraSrtNcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class _$KmaUltraSrtNcstApiResultCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiResultCopyWith<$Res> {
  _$KmaUltraSrtNcstApiResultCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiResult _self;
  final $Res Function(KmaUltraSrtNcstApiResult) _then;

/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? body = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiBody,
  ));
}
/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtNcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtNcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiResult].
extension KmaUltraSrtNcstApiResultPatterns on KmaUltraSrtNcstApiResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiResult value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiResult value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaUltraSrtNcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtNcstApiBody body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'header')  KmaUltraSrtNcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtNcstApiBody body)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'header')  KmaUltraSrtNcstApiHeader header, @JsonKey(name: 'body')  KmaUltraSrtNcstApiBody body)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiResult() when $default != null:
return $default(_that.header,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiResult implements KmaUltraSrtNcstApiResult {
  const _KmaUltraSrtNcstApiResult({@JsonKey(name: 'header') required this.header, @JsonKey(name: 'body') required this.body});
  factory _KmaUltraSrtNcstApiResult.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiResultFromJson(json);

@override@JsonKey(name: 'header') final  KmaUltraSrtNcstApiHeader header;
@override@JsonKey(name: 'body') final  KmaUltraSrtNcstApiBody body;

/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiResultCopyWith<_KmaUltraSrtNcstApiResult> get copyWith => __$KmaUltraSrtNcstApiResultCopyWithImpl<_KmaUltraSrtNcstApiResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiResult&&(identical(other.header, header) || other.header == header)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,body);

@override
String toString() {
  return 'KmaUltraSrtNcstApiResult(header: $header, body: $body)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiResultCopyWith<$Res> implements $KmaUltraSrtNcstApiResultCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiResultCopyWith(_KmaUltraSrtNcstApiResult value, $Res Function(_KmaUltraSrtNcstApiResult) _then) = __$KmaUltraSrtNcstApiResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'header') KmaUltraSrtNcstApiHeader header,@JsonKey(name: 'body') KmaUltraSrtNcstApiBody body
});


@override $KmaUltraSrtNcstApiHeaderCopyWith<$Res> get header;@override $KmaUltraSrtNcstApiBodyCopyWith<$Res> get body;

}
/// @nodoc
class __$KmaUltraSrtNcstApiResultCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiResultCopyWith<$Res> {
  __$KmaUltraSrtNcstApiResultCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiResult _self;
  final $Res Function(_KmaUltraSrtNcstApiResult) _then;

/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? body = null,}) {
  return _then(_KmaUltraSrtNcstApiResult(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiHeader,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiBody,
  ));
}

/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiHeaderCopyWith<$Res> get header {
  
  return $KmaUltraSrtNcstApiHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of KmaUltraSrtNcstApiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiBodyCopyWith<$Res> get body {
  
  return $KmaUltraSrtNcstApiBodyCopyWith<$Res>(_self.body, (value) {
    return _then(_self.copyWith(body: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtNcstApiHeader {

@JsonKey(name: 'resultCode') String get resultCode;@JsonKey(name: 'resultMsg') String get resultMsg;
/// Create a copy of KmaUltraSrtNcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiHeaderCopyWith<KmaUltraSrtNcstApiHeader> get copyWith => _$KmaUltraSrtNcstApiHeaderCopyWithImpl<KmaUltraSrtNcstApiHeader>(this as KmaUltraSrtNcstApiHeader, _$identity);

  /// Serializes this KmaUltraSrtNcstApiHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtNcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiHeaderCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiHeaderCopyWith(KmaUltraSrtNcstApiHeader value, $Res Function(KmaUltraSrtNcstApiHeader) _then) = _$KmaUltraSrtNcstApiHeaderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class _$KmaUltraSrtNcstApiHeaderCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiHeaderCopyWith<$Res> {
  _$KmaUltraSrtNcstApiHeaderCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiHeader _self;
  final $Res Function(KmaUltraSrtNcstApiHeader) _then;

/// Create a copy of KmaUltraSrtNcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_self.copyWith(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiHeader].
extension KmaUltraSrtNcstApiHeaderPatterns on KmaUltraSrtNcstApiHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiHeader value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiHeader value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiHeader() when $default != null:
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
case _KmaUltraSrtNcstApiHeader() when $default != null:
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
case _KmaUltraSrtNcstApiHeader():
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
case _KmaUltraSrtNcstApiHeader() when $default != null:
return $default(_that.resultCode,_that.resultMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiHeader implements KmaUltraSrtNcstApiHeader {
  const _KmaUltraSrtNcstApiHeader({@JsonKey(name: 'resultCode') required this.resultCode, @JsonKey(name: 'resultMsg') required this.resultMsg});
  factory _KmaUltraSrtNcstApiHeader.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiHeaderFromJson(json);

@override@JsonKey(name: 'resultCode') final  String resultCode;
@override@JsonKey(name: 'resultMsg') final  String resultMsg;

/// Create a copy of KmaUltraSrtNcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiHeaderCopyWith<_KmaUltraSrtNcstApiHeader> get copyWith => __$KmaUltraSrtNcstApiHeaderCopyWithImpl<_KmaUltraSrtNcstApiHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiHeader&&(identical(other.resultCode, resultCode) || other.resultCode == resultCode)&&(identical(other.resultMsg, resultMsg) || other.resultMsg == resultMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resultCode,resultMsg);

@override
String toString() {
  return 'KmaUltraSrtNcstApiHeader(resultCode: $resultCode, resultMsg: $resultMsg)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiHeaderCopyWith<$Res> implements $KmaUltraSrtNcstApiHeaderCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiHeaderCopyWith(_KmaUltraSrtNcstApiHeader value, $Res Function(_KmaUltraSrtNcstApiHeader) _then) = __$KmaUltraSrtNcstApiHeaderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resultCode') String resultCode,@JsonKey(name: 'resultMsg') String resultMsg
});




}
/// @nodoc
class __$KmaUltraSrtNcstApiHeaderCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiHeaderCopyWith<$Res> {
  __$KmaUltraSrtNcstApiHeaderCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiHeader _self;
  final $Res Function(_KmaUltraSrtNcstApiHeader) _then;

/// Create a copy of KmaUltraSrtNcstApiHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resultCode = null,Object? resultMsg = null,}) {
  return _then(_KmaUltraSrtNcstApiHeader(
resultCode: null == resultCode ? _self.resultCode : resultCode // ignore: cast_nullable_to_non_nullable
as String,resultMsg: null == resultMsg ? _self.resultMsg : resultMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtNcstApiBody {

@JsonKey(name: 'dataType') String get dataType;@JsonKey(name: 'items') KmaUltraSrtNcstApiItems get items;@JsonKey(name: 'pageNo') int get pageNo;@JsonKey(name: 'numOfRows') int get numOfRows;@JsonKey(name: 'totalCount') int get totalCount;
/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiBodyCopyWith<KmaUltraSrtNcstApiBody> get copyWith => _$KmaUltraSrtNcstApiBodyCopyWithImpl<KmaUltraSrtNcstApiBody>(this as KmaUltraSrtNcstApiBody, _$identity);

  /// Serializes this KmaUltraSrtNcstApiBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtNcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiBodyCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiBodyCopyWith(KmaUltraSrtNcstApiBody value, $Res Function(KmaUltraSrtNcstApiBody) _then) = _$KmaUltraSrtNcstApiBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaUltraSrtNcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


$KmaUltraSrtNcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class _$KmaUltraSrtNcstApiBodyCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiBodyCopyWith<$Res> {
  _$KmaUltraSrtNcstApiBodyCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiBody _self;
  final $Res Function(KmaUltraSrtNcstApiBody) _then;

/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtNcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiBody].
extension KmaUltraSrtNcstApiBodyPatterns on KmaUltraSrtNcstApiBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiBody value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiBody value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtNcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtNcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dataType')  String dataType, @JsonKey(name: 'items')  KmaUltraSrtNcstApiItems items, @JsonKey(name: 'pageNo')  int pageNo, @JsonKey(name: 'numOfRows')  int numOfRows, @JsonKey(name: 'totalCount')  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiBody() when $default != null:
return $default(_that.dataType,_that.items,_that.pageNo,_that.numOfRows,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiBody implements KmaUltraSrtNcstApiBody {
  const _KmaUltraSrtNcstApiBody({@JsonKey(name: 'dataType') required this.dataType, @JsonKey(name: 'items') required this.items, @JsonKey(name: 'pageNo') required this.pageNo, @JsonKey(name: 'numOfRows') required this.numOfRows, @JsonKey(name: 'totalCount') required this.totalCount});
  factory _KmaUltraSrtNcstApiBody.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiBodyFromJson(json);

@override@JsonKey(name: 'dataType') final  String dataType;
@override@JsonKey(name: 'items') final  KmaUltraSrtNcstApiItems items;
@override@JsonKey(name: 'pageNo') final  int pageNo;
@override@JsonKey(name: 'numOfRows') final  int numOfRows;
@override@JsonKey(name: 'totalCount') final  int totalCount;

/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiBodyCopyWith<_KmaUltraSrtNcstApiBody> get copyWith => __$KmaUltraSrtNcstApiBodyCopyWithImpl<_KmaUltraSrtNcstApiBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiBody&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.items, items) || other.items == items)&&(identical(other.pageNo, pageNo) || other.pageNo == pageNo)&&(identical(other.numOfRows, numOfRows) || other.numOfRows == numOfRows)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataType,items,pageNo,numOfRows,totalCount);

@override
String toString() {
  return 'KmaUltraSrtNcstApiBody(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiBodyCopyWith<$Res> implements $KmaUltraSrtNcstApiBodyCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiBodyCopyWith(_KmaUltraSrtNcstApiBody value, $Res Function(_KmaUltraSrtNcstApiBody) _then) = __$KmaUltraSrtNcstApiBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dataType') String dataType,@JsonKey(name: 'items') KmaUltraSrtNcstApiItems items,@JsonKey(name: 'pageNo') int pageNo,@JsonKey(name: 'numOfRows') int numOfRows,@JsonKey(name: 'totalCount') int totalCount
});


@override $KmaUltraSrtNcstApiItemsCopyWith<$Res> get items;

}
/// @nodoc
class __$KmaUltraSrtNcstApiBodyCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiBodyCopyWith<$Res> {
  __$KmaUltraSrtNcstApiBodyCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiBody _self;
  final $Res Function(_KmaUltraSrtNcstApiBody) _then;

/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataType = null,Object? items = null,Object? pageNo = null,Object? numOfRows = null,Object? totalCount = null,}) {
  return _then(_KmaUltraSrtNcstApiBody(
dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as KmaUltraSrtNcstApiItems,pageNo: null == pageNo ? _self.pageNo : pageNo // ignore: cast_nullable_to_non_nullable
as int,numOfRows: null == numOfRows ? _self.numOfRows : numOfRows // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of KmaUltraSrtNcstApiBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiItemsCopyWith<$Res> get items {
  
  return $KmaUltraSrtNcstApiItemsCopyWith<$Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// @nodoc
mixin _$KmaUltraSrtNcstApiItems {

@JsonKey(name: 'item') List<KmaUltraSrtNcstApiItem> get item;
/// Create a copy of KmaUltraSrtNcstApiItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiItemsCopyWith<KmaUltraSrtNcstApiItems> get copyWith => _$KmaUltraSrtNcstApiItemsCopyWithImpl<KmaUltraSrtNcstApiItems>(this as KmaUltraSrtNcstApiItems, _$identity);

  /// Serializes this KmaUltraSrtNcstApiItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiItems&&const DeepCollectionEquality().equals(other.item, item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item));

@override
String toString() {
  return 'KmaUltraSrtNcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiItemsCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiItemsCopyWith(KmaUltraSrtNcstApiItems value, $Res Function(KmaUltraSrtNcstApiItems) _then) = _$KmaUltraSrtNcstApiItemsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item') List<KmaUltraSrtNcstApiItem> item
});




}
/// @nodoc
class _$KmaUltraSrtNcstApiItemsCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiItemsCopyWith<$Res> {
  _$KmaUltraSrtNcstApiItemsCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiItems _self;
  final $Res Function(KmaUltraSrtNcstApiItems) _then;

/// Create a copy of KmaUltraSrtNcstApiItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtNcstApiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiItems].
extension KmaUltraSrtNcstApiItemsPatterns on KmaUltraSrtNcstApiItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiItems value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiItems value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaUltraSrtNcstApiItem> item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item')  List<KmaUltraSrtNcstApiItem> item)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item')  List<KmaUltraSrtNcstApiItem> item)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItems() when $default != null:
return $default(_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiItems implements KmaUltraSrtNcstApiItems {
  const _KmaUltraSrtNcstApiItems({@JsonKey(name: 'item') required final  List<KmaUltraSrtNcstApiItem> item}): _item = item;
  factory _KmaUltraSrtNcstApiItems.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiItemsFromJson(json);

 final  List<KmaUltraSrtNcstApiItem> _item;
@override@JsonKey(name: 'item') List<KmaUltraSrtNcstApiItem> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}


/// Create a copy of KmaUltraSrtNcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiItemsCopyWith<_KmaUltraSrtNcstApiItems> get copyWith => __$KmaUltraSrtNcstApiItemsCopyWithImpl<_KmaUltraSrtNcstApiItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiItems&&const DeepCollectionEquality().equals(other._item, _item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item));

@override
String toString() {
  return 'KmaUltraSrtNcstApiItems(item: $item)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiItemsCopyWith<$Res> implements $KmaUltraSrtNcstApiItemsCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiItemsCopyWith(_KmaUltraSrtNcstApiItems value, $Res Function(_KmaUltraSrtNcstApiItems) _then) = __$KmaUltraSrtNcstApiItemsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item') List<KmaUltraSrtNcstApiItem> item
});




}
/// @nodoc
class __$KmaUltraSrtNcstApiItemsCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiItemsCopyWith<$Res> {
  __$KmaUltraSrtNcstApiItemsCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiItems _self;
  final $Res Function(_KmaUltraSrtNcstApiItems) _then;

/// Create a copy of KmaUltraSrtNcstApiItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(_KmaUltraSrtNcstApiItems(
item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<KmaUltraSrtNcstApiItem>,
  ));
}


}


/// @nodoc
mixin _$KmaUltraSrtNcstApiItem {

@JsonKey(name: 'baseDate') String get baseDate;@JsonKey(name: 'baseTime') String get baseTime;@JsonKey(name: 'category') String get category;@JsonKey(name: 'obsrValue') String get obsrValue;@JsonKey(name: 'nx') int get nx;@JsonKey(name: 'ny') int get ny;
/// Create a copy of KmaUltraSrtNcstApiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KmaUltraSrtNcstApiItemCopyWith<KmaUltraSrtNcstApiItem> get copyWith => _$KmaUltraSrtNcstApiItemCopyWithImpl<KmaUltraSrtNcstApiItem>(this as KmaUltraSrtNcstApiItem, _$identity);

  /// Serializes this KmaUltraSrtNcstApiItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KmaUltraSrtNcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.obsrValue, obsrValue) || other.obsrValue == obsrValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,obsrValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtNcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, obsrValue: $obsrValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class $KmaUltraSrtNcstApiItemCopyWith<$Res>  {
  factory $KmaUltraSrtNcstApiItemCopyWith(KmaUltraSrtNcstApiItem value, $Res Function(KmaUltraSrtNcstApiItem) _then) = _$KmaUltraSrtNcstApiItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'obsrValue') String obsrValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class _$KmaUltraSrtNcstApiItemCopyWithImpl<$Res>
    implements $KmaUltraSrtNcstApiItemCopyWith<$Res> {
  _$KmaUltraSrtNcstApiItemCopyWithImpl(this._self, this._then);

  final KmaUltraSrtNcstApiItem _self;
  final $Res Function(KmaUltraSrtNcstApiItem) _then;

/// Create a copy of KmaUltraSrtNcstApiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? obsrValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_self.copyWith(
baseDate: null == baseDate ? _self.baseDate : baseDate // ignore: cast_nullable_to_non_nullable
as String,baseTime: null == baseTime ? _self.baseTime : baseTime // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,obsrValue: null == obsrValue ? _self.obsrValue : obsrValue // ignore: cast_nullable_to_non_nullable
as String,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KmaUltraSrtNcstApiItem].
extension KmaUltraSrtNcstApiItemPatterns on KmaUltraSrtNcstApiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KmaUltraSrtNcstApiItem value)  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KmaUltraSrtNcstApiItem value)?  $default,){
final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'obsrValue')  String obsrValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.obsrValue,_that.nx,_that.ny);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'obsrValue')  String obsrValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem():
return $default(_that.baseDate,_that.baseTime,_that.category,_that.obsrValue,_that.nx,_that.ny);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'baseDate')  String baseDate, @JsonKey(name: 'baseTime')  String baseTime, @JsonKey(name: 'category')  String category, @JsonKey(name: 'obsrValue')  String obsrValue, @JsonKey(name: 'nx')  int nx, @JsonKey(name: 'ny')  int ny)?  $default,) {final _that = this;
switch (_that) {
case _KmaUltraSrtNcstApiItem() when $default != null:
return $default(_that.baseDate,_that.baseTime,_that.category,_that.obsrValue,_that.nx,_that.ny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KmaUltraSrtNcstApiItem implements KmaUltraSrtNcstApiItem {
  const _KmaUltraSrtNcstApiItem({@JsonKey(name: 'baseDate') required this.baseDate, @JsonKey(name: 'baseTime') required this.baseTime, @JsonKey(name: 'category') required this.category, @JsonKey(name: 'obsrValue') required this.obsrValue, @JsonKey(name: 'nx') required this.nx, @JsonKey(name: 'ny') required this.ny});
  factory _KmaUltraSrtNcstApiItem.fromJson(Map<String, dynamic> json) => _$KmaUltraSrtNcstApiItemFromJson(json);

@override@JsonKey(name: 'baseDate') final  String baseDate;
@override@JsonKey(name: 'baseTime') final  String baseTime;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'obsrValue') final  String obsrValue;
@override@JsonKey(name: 'nx') final  int nx;
@override@JsonKey(name: 'ny') final  int ny;

/// Create a copy of KmaUltraSrtNcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KmaUltraSrtNcstApiItemCopyWith<_KmaUltraSrtNcstApiItem> get copyWith => __$KmaUltraSrtNcstApiItemCopyWithImpl<_KmaUltraSrtNcstApiItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KmaUltraSrtNcstApiItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KmaUltraSrtNcstApiItem&&(identical(other.baseDate, baseDate) || other.baseDate == baseDate)&&(identical(other.baseTime, baseTime) || other.baseTime == baseTime)&&(identical(other.category, category) || other.category == category)&&(identical(other.obsrValue, obsrValue) || other.obsrValue == obsrValue)&&(identical(other.nx, nx) || other.nx == nx)&&(identical(other.ny, ny) || other.ny == ny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseDate,baseTime,category,obsrValue,nx,ny);

@override
String toString() {
  return 'KmaUltraSrtNcstApiItem(baseDate: $baseDate, baseTime: $baseTime, category: $category, obsrValue: $obsrValue, nx: $nx, ny: $ny)';
}


}

/// @nodoc
abstract mixin class _$KmaUltraSrtNcstApiItemCopyWith<$Res> implements $KmaUltraSrtNcstApiItemCopyWith<$Res> {
  factory _$KmaUltraSrtNcstApiItemCopyWith(_KmaUltraSrtNcstApiItem value, $Res Function(_KmaUltraSrtNcstApiItem) _then) = __$KmaUltraSrtNcstApiItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'baseDate') String baseDate,@JsonKey(name: 'baseTime') String baseTime,@JsonKey(name: 'category') String category,@JsonKey(name: 'obsrValue') String obsrValue,@JsonKey(name: 'nx') int nx,@JsonKey(name: 'ny') int ny
});




}
/// @nodoc
class __$KmaUltraSrtNcstApiItemCopyWithImpl<$Res>
    implements _$KmaUltraSrtNcstApiItemCopyWith<$Res> {
  __$KmaUltraSrtNcstApiItemCopyWithImpl(this._self, this._then);

  final _KmaUltraSrtNcstApiItem _self;
  final $Res Function(_KmaUltraSrtNcstApiItem) _then;

/// Create a copy of KmaUltraSrtNcstApiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseDate = null,Object? baseTime = null,Object? category = null,Object? obsrValue = null,Object? nx = null,Object? ny = null,}) {
  return _then(_KmaUltraSrtNcstApiItem(
baseDate: null == baseDate ? _self.baseDate : baseDate // ignore: cast_nullable_to_non_nullable
as String,baseTime: null == baseTime ? _self.baseTime : baseTime // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,obsrValue: null == obsrValue ? _self.obsrValue : obsrValue // ignore: cast_nullable_to_non_nullable
as String,nx: null == nx ? _self.nx : nx // ignore: cast_nullable_to_non_nullable
as int,ny: null == ny ? _self.ny : ny // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
