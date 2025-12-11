import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_ultra_srt_ncst_response_models.freezed.dart';
part 'kma_ultra_srt_ncst_response_models.g.dart';

@freezed
abstract class KmaUltraSrtNcstApiResponse with _$KmaUltraSrtNcstApiResponse {
  const factory KmaUltraSrtNcstApiResponse({
    @JsonKey(name: 'response') required KmaUltraSrtNcstApiResult result,
  }) = _KmaUltraSrtNcstApiResponse;

  factory KmaUltraSrtNcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiResponseFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiResult with _$KmaUltraSrtNcstApiResult {
  const factory KmaUltraSrtNcstApiResult({
    @JsonKey(name: 'header') required KmaUltraSrtNcstApiHeader header,
    @JsonKey(name: 'body') required KmaUltraSrtNcstApiBody body,
  }) = _KmaUltraSrtNcstApiResult;

  factory KmaUltraSrtNcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiResultFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiHeader with _$KmaUltraSrtNcstApiHeader {
  const factory KmaUltraSrtNcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaUltraSrtNcstApiHeader;

  factory KmaUltraSrtNcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiBody with _$KmaUltraSrtNcstApiBody {
  const factory KmaUltraSrtNcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaUltraSrtNcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaUltraSrtNcstApiBody;

  factory KmaUltraSrtNcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiBodyFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiItems with _$KmaUltraSrtNcstApiItems {
  const factory KmaUltraSrtNcstApiItems({
    @JsonKey(name: 'item') required List<KmaUltraSrtNcstApiItem> item,
  }) = _KmaUltraSrtNcstApiItems;

  factory KmaUltraSrtNcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiItemsFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiItem with _$KmaUltraSrtNcstApiItem {
  const factory KmaUltraSrtNcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'obsrValue') required String obsrValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaUltraSrtNcstApiItem;

  factory KmaUltraSrtNcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiItemFromJson(json);
}
