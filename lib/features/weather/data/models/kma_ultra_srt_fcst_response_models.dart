import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_ultra_srt_fcst_response_models.freezed.dart';
part 'kma_ultra_srt_fcst_response_models.g.dart';

@freezed
abstract class KmaUltraSrtFcstApiResponse with _$KmaUltraSrtFcstApiResponse {
  const factory KmaUltraSrtFcstApiResponse({
    @JsonKey(name: 'response') required KmaUltraSrtFcstApiResult response,
  }) = _KmaUltraSrtFcstApiResponse;

  factory KmaUltraSrtFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiResponseFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiResult with _$KmaUltraSrtFcstApiResult {
  const factory KmaUltraSrtFcstApiResult({
    @JsonKey(name: 'header') required KmaUltraSrtFcstApiHeader header,
    @JsonKey(name: 'body') required KmaUltraSrtFcstApiBody body,
  }) = _KmaUltraSrtFcstApiResult;

  factory KmaUltraSrtFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiResultFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiHeader with _$KmaUltraSrtFcstApiHeader {
  const factory KmaUltraSrtFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaUltraSrtFcstApiHeader;

  factory KmaUltraSrtFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiBody with _$KmaUltraSrtFcstApiBody {
  const factory KmaUltraSrtFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaUltraSrtFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaUltraSrtFcstApiBody;

  factory KmaUltraSrtFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiItems with _$KmaUltraSrtFcstApiItems {
  const factory KmaUltraSrtFcstApiItems({
    @JsonKey(name: 'item') required List<KmaUltraSrtFcstApiItem> item,
  }) = _KmaUltraSrtFcstApiItems;

  factory KmaUltraSrtFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiItemsFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiItem with _$KmaUltraSrtFcstApiItem {
  const factory KmaUltraSrtFcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'fcstDate') required String fcstDate,
    @JsonKey(name: 'fcstTime') required String fcstTime,
    @JsonKey(name: 'fcstValue') required String fcstValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaUltraSrtFcstApiItem;

  factory KmaUltraSrtFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiItemFromJson(json);
}
