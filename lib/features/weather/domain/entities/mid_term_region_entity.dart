import 'package:freezed_annotation/freezed_annotation.dart';

part 'mid_term_region_entity.freezed.dart';

@freezed
abstract class MidTermRegion with _$MidTermRegion {
  const factory MidTermRegion({
    required String region,
    required String city,
    required String regId,
    @Default(false) bool isCommunicated,
  }) = _MidTermRegion;
}
