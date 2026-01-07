// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_geocoding_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoogleGeocodingResponse _$GoogleGeocodingResponseFromJson(
  Map<String, dynamic> json,
) => _GoogleGeocodingResponse(
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => GeocodingResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  status: json['status'] as String,
  errorMessage: json['error_message'] as String?,
);

Map<String, dynamic> _$GoogleGeocodingResponseToJson(
  _GoogleGeocodingResponse instance,
) => <String, dynamic>{
  'results': instance.results,
  'status': instance.status,
  'error_message': instance.errorMessage,
};

_GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) =>
    _GeocodingResult(
      addressComponents:
          (json['address_components'] as List<dynamic>?)
              ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      formattedAddress: json['formatted_address'] as String?,
      geometry: AddressGeometry.fromJson(
        json['geometry'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GeocodingResultToJson(_GeocodingResult instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponents,
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry,
    };

_AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) =>
    _AddressComponent(
      longName: json['long_name'] as String,
      shortName: json['short_name'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddressComponentToJson(_AddressComponent instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };

_AddressGeometry _$AddressGeometryFromJson(Map<String, dynamic> json) =>
    _AddressGeometry(
      geometryLocation: json['location'] == null
          ? null
          : GeometryLocation.fromJson(json['location'] as Map<String, dynamic>),
      locationType: json['location_type'] as String?,
    );

Map<String, dynamic> _$AddressGeometryToJson(_AddressGeometry instance) =>
    <String, dynamic>{
      'location': instance.geometryLocation,
      'location_type': instance.locationType,
    };

_GeometryLocation _$GeometryLocationFromJson(Map<String, dynamic> json) =>
    _GeometryLocation(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$GeometryLocationToJson(_GeometryLocation instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
