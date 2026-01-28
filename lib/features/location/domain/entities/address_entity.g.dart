// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  country: json['country'] as String?,
  administrativeArea: json['administrativeArea'] as String?,
  locality: json['locality'] as String?,
  subLocality: json['subLocality'] as String?,
  subLocalityLevel2: json['subLocalityLevel2'] as String?,
  subLocalityLevel3: json['subLocalityLevel3'] as String?,
  subLocalityLevel4: json['subLocalityLevel4'] as String?,
  formattedAddress: json['formattedAddress'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'country': instance.country,
  'administrativeArea': instance.administrativeArea,
  'locality': instance.locality,
  'subLocality': instance.subLocality,
  'subLocalityLevel2': instance.subLocalityLevel2,
  'subLocalityLevel3': instance.subLocalityLevel3,
  'subLocalityLevel4': instance.subLocalityLevel4,
  'formattedAddress': instance.formattedAddress,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
