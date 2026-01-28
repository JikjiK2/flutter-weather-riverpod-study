import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    String? country,
    String? administrativeArea,
    String? locality,
    String? subLocality,
    String? subLocalityLevel2,
    String? subLocalityLevel3,
    String? subLocalityLevel4,
    String? formattedAddress,
    double? latitude,
    double? longitude,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

extension AddressX on Address {
  String get displayAddress {
    final List<String> components = [];

    if (administrativeArea != null && administrativeArea!.isNotEmpty) {
      components.add(administrativeArea!);
    }

    if (administrativeArea?.contains('특별시') == true ||
        administrativeArea?.contains('광역시') == true) {
      if (subLocality != null && subLocality!.isNotEmpty) {
        components.add(subLocality!);
      } else if (locality != null && locality!.isNotEmpty) {
        components.add(locality!);
      }
    } else {
      if (locality != null && locality!.isNotEmpty) {
        components.add(locality!);
      }
    }

    if (subLocalityLevel2 != null && subLocalityLevel2!.isNotEmpty) {
      components.add(subLocalityLevel2!);
    }

    return components.take(3).join(' ');
  }
}
