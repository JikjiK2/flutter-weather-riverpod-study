import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';

part 'google_geocoding_response_model.freezed.dart';

part 'google_geocoding_response_model.g.dart';

@freezed
abstract class GoogleGeocodingResponse with _$GoogleGeocodingResponse {
  const GoogleGeocodingResponse._();
  const factory GoogleGeocodingResponse({
    @Default([]) @JsonKey(name: 'results') List<GeocodingResult> results,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'error_message') String? errorMessage,
  }) = _GoogleGeocodingResponse;

  factory GoogleGeocodingResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleGeocodingResponseFromJson(json);

  Map<String, List<Address>> toAddressMap() {
    if (status != 'OK' || results.isEmpty) return {};

    final Map<String, List<Address>> addressItems = {};
    for (var result in results) {
      final key = result.formattedAddress ?? '알 수 없는 주소';
      addressItems.putIfAbsent(key, () => []).add(result.toEntity());
    }
    return addressItems;
  }

  Address toBestAddress(double lat, double lon) {
    if (results.isEmpty) {
      return const Address(administrativeArea: "위치", locality: "알 수 없음");
    }

    final bestResult = results.firstWhere(
          (r) => r.addressComponents.any((c) => c.types.contains('sublocality_level_2')),
      orElse: () => results.first,
    );

    return bestResult.toEntity().copyWith(latitude: lat, longitude: lon);
  }
}

@freezed
abstract class GeocodingResult with _$GeocodingResult {
  const GeocodingResult._();
  const factory GeocodingResult({
    @JsonKey(name: 'address_components')
    @Default([])
    List<AddressComponent> addressComponents,
    @JsonKey(name: 'formatted_address') String? formattedAddress,
    @JsonKey(name: 'geometry') required AddressGeometry geometry,
  }) = _GeocodingResult;

  factory GeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodingResultFromJson(json);

  Address toEntity() {
    final componentsMap = _parseAddressComponents();

    return Address(
      country: componentsMap['country'],
      administrativeArea: componentsMap['administrative_area_level_1'],
      locality: componentsMap['locality'],
      subLocality: componentsMap['sublocality_level_1'],
      subLocalityLevel2: componentsMap['sublocality_level_2'] ??
          componentsMap['route'] ??
          componentsMap['sublocality_level_4'],
      subLocalityLevel3: componentsMap['sublocality_level_3'],
      subLocalityLevel4: componentsMap['sublocality_level_4'],
      formattedAddress: formattedAddress,
      latitude: geometry.geometryLocation?.lat,
      longitude: geometry.geometryLocation?.lng,
    );
  }

  Map<String, String> _parseAddressComponents() {
    final Map<String, String> map = {};
    for (var component in addressComponents) {
      for (var type in component.types) {
        map[type] = component.longName;
      }
    }
    return map;
  }

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
