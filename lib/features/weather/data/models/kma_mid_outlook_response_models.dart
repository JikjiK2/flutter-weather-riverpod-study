import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_mid_outlook_response_models.freezed.dart';

part 'kma_mid_outlook_response_models.g.dart';

@freezed
abstract class KmaMidOutlookApiResponse with _$KmaMidOutlookApiResponse {
  const factory KmaMidOutlookApiResponse({
    @JsonKey(name: 'response') required KmaMidOutlookApiResult response,
  }) = _KmaMidOutlookApiResponse;

  factory KmaMidOutlookApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaMidOutlookApiResponseFromJson(json);
}

@freezed
abstract class KmaMidOutlookApiResult with _$KmaMidOutlookApiResult {
  const factory KmaMidOutlookApiResult({
    @JsonKey(name: 'header') required KmaMidOutlookApiHeader header,
    @JsonKey(name: 'body') required KmaMidOutlookApiBody body,
  }) = _KmaMidOutlookApiResult;

  factory KmaMidOutlookApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaMidOutlookApiResultFromJson(json);
}

@freezed
abstract class KmaMidOutlookApiHeader with _$KmaMidOutlookApiHeader {
  const factory KmaMidOutlookApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaMidOutlookApiHeader;

  factory KmaMidOutlookApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaMidOutlookApiHeaderFromJson(json);
}

@freezed
abstract class KmaMidOutlookApiBody with _$KmaMidOutlookApiBody {
  const factory KmaMidOutlookApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaKmaMidOutlookApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaMidOutlookApiBody;

  factory KmaMidOutlookApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaMidOutlookApiBodyFromJson(json);
}

@freezed
abstract class KmaKmaMidOutlookApiItems with _$KmaKmaMidOutlookApiItems {
  const factory KmaKmaMidOutlookApiItems({
    @JsonKey(name: 'item') required List<KmaMidOutlookApiItem> item,
  }) = _KmaKmaMidOutlookApiItems;

  factory KmaKmaMidOutlookApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaKmaMidOutlookApiItemsFromJson(json);
}

@freezed
abstract class KmaMidOutlookApiItem with _$KmaMidOutlookApiItem {
  const factory KmaMidOutlookApiItem({
    @JsonKey(name: 'wfSv')
    required String wfSv, // 날씨 전망 텍스트 (예: ○ (강수) 13일(토) 전국 비...)
  }) = _KmaMidOutlookApiItem;

  factory KmaMidOutlookApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaMidOutlookApiItemFromJson(json);
}
