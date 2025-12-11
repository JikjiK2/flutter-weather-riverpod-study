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

// 개별 예보 아이템 모델 (핵심 데이터)
@freezed
abstract class KmaMidTmpFcstApiItem with _$KmaMidTmpFcstApiItem {
  const factory KmaMidTmpFcstApiItem({
    required String regId, // 지역 코드 (예: 11B10101)
    @JsonKey(name: 'taMin4') int? taMin4,
    @JsonKey(name: 'taMin4Low') int? taMin4Low,
    @JsonKey(name: 'taMin4High') int? taMin4High,
    @JsonKey(name: 'taMax4') int? taMax4,
    @JsonKey(name: 'taMax4Low') int? taMax4Low,
    @JsonKey(name: 'taMax4High') int? taMax4High,

    @JsonKey(name: 'taMin5') int? taMin5,
    @JsonKey(name: 'taMin5Low') int? taMin5Low,
    @JsonKey(name: 'taMin5High') int? taMin5High,
    @JsonKey(name: 'taMax5') int? taMax5,
    @JsonKey(name: 'taMax5Low') int? taMax5Low,
    @JsonKey(name: 'taMax5High') int? taMax5High,

    @JsonKey(name: 'taMin6') int? taMin6,
    @JsonKey(name: 'taMin6Low') int? taMin6Low,
    @JsonKey(name: 'taMin6High') int? taMin6High,
    @JsonKey(name: 'taMax6') int? taMax6,
    @JsonKey(name: 'taMax6Low') int? taMax6Low,
    @JsonKey(name: 'taMax6High') int? taMax6High,

    @JsonKey(name: 'taMin7') int? taMin7,
    @JsonKey(name: 'taMin7Low') int? taMin7Low,
    @JsonKey(name: 'taMin7High') int? taMin7High,
    @JsonKey(name: 'taMax7') int? taMax7,
    @JsonKey(name: 'taMax7Low') int? taMax7Low,
    @JsonKey(name: 'taMax7High') int? taMax7High,
  }) = _KmaMidTmpFcstApiItem;

  factory KmaMidTmpFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaMidTmpFcstApiItemFromJson(json);
}
