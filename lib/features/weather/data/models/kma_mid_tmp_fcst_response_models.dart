import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_mid_tmp_fcst_response_models.freezed.dart';

part 'kma_mid_tmp_fcst_response_models.g.dart';

@freezed
abstract class KmaMidTmpFcstApiResponse with _$KmaMidTmpFcstApiResponse {
  const factory KmaMidTmpFcstApiResponse({
    @JsonKey(name: 'response') required KmaMidTmpFcstApiResult response,
  }) = _KmaMidTmpFcstApiResponse;

  factory KmaMidTmpFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiResponseFromJson(json);
}

@freezed
abstract class KmaMidTmpFcstApiResult with _$KmaMidTmpFcstApiResult {
  const factory KmaMidTmpFcstApiResult({
    @JsonKey(name: 'header') required KmaMidTmpFcstApiHeader header,
    @JsonKey(name: 'body') required KmaMidTmpFcstApiBody body,
  }) = _KmaMidTmpFcstApiResult;

  factory KmaMidTmpFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiResultFromJson(json);
}

@freezed
abstract class KmaMidTmpFcstApiHeader with _$KmaMidTmpFcstApiHeader {
  const factory KmaMidTmpFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaMidTmpFcstApiHeader;

  factory KmaMidTmpFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaMidTmpFcstApiBody with _$KmaMidTmpFcstApiBody {
  const factory KmaMidTmpFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaMidTmpFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _MidTmpFcstApiBody;

  factory KmaMidTmpFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaMidTmpFcstApiItems with _$KmaMidTmpFcstApiItems {
  const factory KmaMidTmpFcstApiItems({
    @JsonKey(name: 'item') required List<KmaMidTmpFcstApiItem> item,
  }) = _MidTmpFcstApiItems;

  factory KmaMidTmpFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiItemsFromJson(json);
}

@freezed
abstract class KmaMidTmpFcstApiItem with _$KmaMidTmpFcstApiItem {
  const factory KmaMidTmpFcstApiItem({
    required String regId, // 지역 코드 (예: 11B10101)
    @JsonKey(name: 'taMin4') double? taMin4,
    @JsonKey(name: 'taMax4') double? taMax4,

    @JsonKey(name: 'taMin5') double? taMin5,
    @JsonKey(name: 'taMax5') double? taMax5,

    @JsonKey(name: 'taMin6') double? taMin6,
    @JsonKey(name: 'taMax6') double? taMax6,

    @JsonKey(name: 'taMin7') double? taMin7,
    @JsonKey(name: 'taMax7') double? taMax7,
  }) = _KmaMidTmpFcstApiItem;

  factory KmaMidTmpFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiItemFromJson(json);
}

extension KmaMidTmpFcstApiItemX on KmaMidTmpFcstApiItem {
  Map<int, ({double min, double max})> toTempMap() {
    return {
      4: (min: taMin4 ?? 0.0, max: taMax4 ?? 0.0),
      5: (min: taMin5 ?? 0.0, max: taMax5 ?? 0.0),
      6: (min: taMin6 ?? 0.0, max: taMax6 ?? 0.0),
      7: (min: taMin7 ?? 0.0, max: taMax7 ?? 0.0),
    };
  }
}
