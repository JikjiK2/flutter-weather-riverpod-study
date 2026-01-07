// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationSearchState {

 String get query; List<Address> get suggestions; bool get isLoading; String? get errorMessage; List<String> get searchHistory;
/// Create a copy of LocationSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationSearchStateCopyWith<LocationSearchState> get copyWith => _$LocationSearchStateCopyWithImpl<LocationSearchState>(this as LocationSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.searchHistory, searchHistory));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(suggestions),isLoading,errorMessage,const DeepCollectionEquality().hash(searchHistory));

@override
String toString() {
  return 'LocationSearchState(query: $query, suggestions: $suggestions, isLoading: $isLoading, errorMessage: $errorMessage, searchHistory: $searchHistory)';
}


}

/// @nodoc
abstract mixin class $LocationSearchStateCopyWith<$Res>  {
  factory $LocationSearchStateCopyWith(LocationSearchState value, $Res Function(LocationSearchState) _then) = _$LocationSearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<Address> suggestions, bool isLoading, String? errorMessage, List<String> searchHistory
});




}
/// @nodoc
class _$LocationSearchStateCopyWithImpl<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  _$LocationSearchStateCopyWithImpl(this._self, this._then);

  final LocationSearchState _self;
  final $Res Function(LocationSearchState) _then;

/// Create a copy of LocationSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? suggestions = null,Object? isLoading = null,Object? errorMessage = freezed,Object? searchHistory = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Address>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self.searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationSearchState].
extension LocationSearchStatePatterns on LocationSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationSearchState value)  $default,){
final _that = this;
switch (_that) {
case _LocationSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _LocationSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<Address> suggestions,  bool isLoading,  String? errorMessage,  List<String> searchHistory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationSearchState() when $default != null:
return $default(_that.query,_that.suggestions,_that.isLoading,_that.errorMessage,_that.searchHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<Address> suggestions,  bool isLoading,  String? errorMessage,  List<String> searchHistory)  $default,) {final _that = this;
switch (_that) {
case _LocationSearchState():
return $default(_that.query,_that.suggestions,_that.isLoading,_that.errorMessage,_that.searchHistory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<Address> suggestions,  bool isLoading,  String? errorMessage,  List<String> searchHistory)?  $default,) {final _that = this;
switch (_that) {
case _LocationSearchState() when $default != null:
return $default(_that.query,_that.suggestions,_that.isLoading,_that.errorMessage,_that.searchHistory);case _:
  return null;

}
}

}

/// @nodoc


class _LocationSearchState implements LocationSearchState {
  const _LocationSearchState({required this.query, required final  List<Address> suggestions, required this.isLoading, this.errorMessage, final  List<String> searchHistory = const []}): _suggestions = suggestions,_searchHistory = searchHistory;
  

@override final  String query;
 final  List<Address> _suggestions;
@override List<Address> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  bool isLoading;
@override final  String? errorMessage;
 final  List<String> _searchHistory;
@override@JsonKey() List<String> get searchHistory {
  if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchHistory);
}


/// Create a copy of LocationSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSearchStateCopyWith<_LocationSearchState> get copyWith => __$LocationSearchStateCopyWithImpl<_LocationSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._searchHistory, _searchHistory));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_suggestions),isLoading,errorMessage,const DeepCollectionEquality().hash(_searchHistory));

@override
String toString() {
  return 'LocationSearchState(query: $query, suggestions: $suggestions, isLoading: $isLoading, errorMessage: $errorMessage, searchHistory: $searchHistory)';
}


}

/// @nodoc
abstract mixin class _$LocationSearchStateCopyWith<$Res> implements $LocationSearchStateCopyWith<$Res> {
  factory _$LocationSearchStateCopyWith(_LocationSearchState value, $Res Function(_LocationSearchState) _then) = __$LocationSearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<Address> suggestions, bool isLoading, String? errorMessage, List<String> searchHistory
});




}
/// @nodoc
class __$LocationSearchStateCopyWithImpl<$Res>
    implements _$LocationSearchStateCopyWith<$Res> {
  __$LocationSearchStateCopyWithImpl(this._self, this._then);

  final _LocationSearchState _self;
  final $Res Function(_LocationSearchState) _then;

/// Create a copy of LocationSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? suggestions = null,Object? isLoading = null,Object? errorMessage = freezed,Object? searchHistory = null,}) {
  return _then(_LocationSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Address>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self._searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
