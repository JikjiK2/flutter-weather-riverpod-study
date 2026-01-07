import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_geocoding_response_model.freezed.dart';
part 'google_geocoding_response_model.g.dart';

@freezed
abstract class GoogleGeocodingResponse with _$GoogleGeocodingResponse {
  const factory GoogleGeocodingResponse({
    @Default([]) @JsonKey(name: 'results') List<GeocodingResult> results,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'error_message') String? errorMessage,
  }) = _GoogleGeocodingResponse;

  factory GoogleGeocodingResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleGeocodingResponseFromJson(json);
}

@freezed
abstract class GeocodingResult with _$GeocodingResult {
  const factory GeocodingResult({
    @JsonKey(name: 'address_components')
    @Default([])
    List<AddressComponent> addressComponents,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    @JsonKey(name: 'geometry') required AddressGeometry geometry,
  }) = _GeocodingResult;

  factory GeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodingResultFromJson(json);
}

@freezed
abstract class AddressComponent with _$AddressComponent {
  const factory AddressComponent({
    @JsonKey(name: 'long_name') required String longName,
    @JsonKey(name: 'short_name') required String shortName,
    required List<String> types,
  }) = _AddressComponent;

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);
}

@freezed
abstract class AddressGeometry with _$AddressGeometry {
  const factory AddressGeometry({
    @JsonKey(name: 'location') GeometryLocation? geometryLocation,
    @JsonKey(name: 'location_type') String? locationType,
  }) = _AddressGeometry;

  factory AddressGeometry.fromJson(Map<String, dynamic> json) =>
      _$AddressGeometryFromJson(json);
}

@freezed
abstract class GeometryLocation with _$GeometryLocation {
  const factory GeometryLocation({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lng') required double lng,
  }) = _GeometryLocation;

  factory GeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$GeometryLocationFromJson(json);
}
