import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_srt_fcst_response_models.freezed.dart';
part 'kma_srt_fcst_response_models.g.dart';

@freezed
abstract class KmaSrtFcstApiResponse with _$KmaSrtFcstApiResponse {
  const factory KmaSrtFcstApiResponse({
    @JsonKey(name: 'response') required KmaSrtFcstApiResult result,
  }) = _KmaSrtFcstApiResponse;

  factory KmaSrtFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiResponseFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiResult with _$KmaSrtFcstApiResult {
  const factory KmaSrtFcstApiResult({
    @JsonKey(name: 'header') required KmaSrtFcstApiHeader header,
    @JsonKey(name: 'body') required KmaSrtFcstApiBody body,
  }) = _KmaSrtFcstApiResult;

  factory KmaSrtFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiResultFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiHeader with _$KmaSrtFcstApiHeader {
  const factory KmaSrtFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaSrtFcstApiHeader;

  factory KmaSrtFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiBody with _$KmaSrtFcstApiBody {
  const factory KmaSrtFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaSrtFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaSrtFcstApiBody;

  factory KmaSrtFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiItems with _$KmaSrtFcstApiItems {
  const factory KmaSrtFcstApiItems({
    @JsonKey(name: 'item') required List<KmaSrtFcstApiItem> item,
  }) = _KmaSrtFcstApiItems;

  factory KmaSrtFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiItemsFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiItem with _$KmaSrtFcstApiItem {
  const factory KmaSrtFcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'fcstDate') required String fcstDate,
    @JsonKey(name: 'fcstTime') required String fcstTime,
    @JsonKey(name: 'fcstValue') required String fcstValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaSrtFcstApiItem;

  factory KmaSrtFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiItemFromJson(json);
}
