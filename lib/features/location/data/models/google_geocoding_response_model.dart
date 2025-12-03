import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_geocoding_response_model.freezed.dart';
part 'google_geocoding_response_model.g.dart';

@freezed
abstract class GoogleGeocodingResponse with _$GoogleGeocodingResponse {
  const factory GoogleGeocodingResponse({
    @JsonKey(name: 'results') required List<GeocodingResult> results,
    @JsonKey(name: 'status') required String status,
  }) = _GoogleGeocodingResponse;

  factory GoogleGeocodingResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleGeocodingResponseFromJson(json);
}

@freezed
abstract class GeocodingResult with _$GeocodingResult {
  const factory GeocodingResult({
    @JsonKey(name: 'address_components')
    required List<AddressComponent> addressComponents,
    @JsonKey(name: 'formatted_address') required String formattedAddress,
    // geometry, place_id, types 등 추가 가능
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
