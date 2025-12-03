import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';

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
  }) = _Address;
}
