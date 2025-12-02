import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_ultra_srt_fcst_response_models.freezed.dart';
part 'kma_ultra_srt_fcst_response_models.g.dart';

@freezed
abstract class KmaUltraSrtFcstApiResponse with _$KmaUltraSrtFcstApiResponse {
  const factory KmaUltraSrtFcstApiResponse({
    required KmaUltraSrtFcstResponse response,
  }) = _KmaUltraSrtFcstApiResponse;

  factory KmaUltraSrtFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiResponseFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstResponse with _$KmaUltraSrtFcstResponse {
  const factory KmaUltraSrtFcstResponse({
    required KmaUltraSrtFcstHeader header,
    required KmaUltraSrtFcstBody body,
  }) = _KmaUltraSrtFcstResponse;

  factory KmaUltraSrtFcstResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstResponseFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstHeader with _$KmaUltraSrtFcstHeader {
  const factory KmaUltraSrtFcstHeader({
    required String resultCode,
    required String resultMsg,
  }) = _KmaUltraSrtFcstHeader;

  factory KmaUltraSrtFcstHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstHeaderFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstBody with _$KmaUltraSrtFcstBody {
  const factory KmaUltraSrtFcstBody({
    required String dataType,
    required KmaUltraSrtFcstItems items,
    required int pageNo,
    required int numOfRows,
    required int totalCount,
  }) = _KmaUltraSrtFcstBody;

  factory KmaUltraSrtFcstBody.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstBodyFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstItems with _$KmaUltraSrtFcstItems {
  const factory KmaUltraSrtFcstItems({
    required List<KmaUltraSrtFcstItem> item,
  }) = _KmaUltraSrtFcstItems;

  factory KmaUltraSrtFcstItems.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstItemsFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstItem with _$KmaUltraSrtFcstItem {
  const factory KmaUltraSrtFcstItem({
    required String baseDate,
    required String baseTime,
    required String category,
    required String fcstDate,
    required String fcstTime,
    required String fcstValue,
    required int nx,
    required int ny,
  }) = _KmaUltraSrtFcstItem;

  factory KmaUltraSrtFcstItem.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstItemFromJson(json);
}
