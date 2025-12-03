// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_geocoding_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoogleGeocodingResponse _$GoogleGeocodingResponseFromJson(
  Map<String, dynamic> json,
) => _GoogleGeocodingResponse(
  results: (json['results'] as List<dynamic>)
      .map((e) => GeocodingResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as String,
);

Map<String, dynamic> _$GoogleGeocodingResponseToJson(
  _GoogleGeocodingResponse instance,
) => <String, dynamic>{'results': instance.results, 'status': instance.status};

_GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) =>
    _GeocodingResult(
      addressComponents: (json['address_components'] as List<dynamic>)
          .map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      formattedAddress: json['formatted_address'] as String,
    );

Map<String, dynamic> _$GeocodingResultToJson(_GeocodingResult instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponents,
      'formatted_address': instance.formattedAddress,
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
