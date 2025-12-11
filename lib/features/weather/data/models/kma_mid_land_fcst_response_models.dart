import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_mid_land_fcst_response_models.freezed.dart';
part 'kma_mid_land_fcst_response_models.g.dart';

@freezed
abstract class KmaMidLandFcstApiResponse with _$KmaMidLandFcstApiResponse {
  const factory KmaMidLandFcstApiResponse({
    @JsonKey(name: 'response') required KmaMidLandFcstApiResult response,
  }) = _KmaMidLandFcstApiResponse;

  factory KmaMidLandFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiResponseFromJson(json);
}

@freezed
abstract class KmaMidLandFcstApiResult with _$KmaMidLandFcstApiResult {
  const factory KmaMidLandFcstApiResult({
    @JsonKey(name: 'header') required KmaMidLandFcstApiHeader header,
    @JsonKey(name: 'body') required KmaMidLandFcstApiBody body,
  }) = _KmaMidLandFcstApiResult;

  factory KmaMidLandFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiResultFromJson(json);
}

@freezed
abstract class KmaMidLandFcstApiHeader with _$KmaMidLandFcstApiHeader {
  const factory KmaMidLandFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaMidLandFcstApiHeader;

  factory KmaMidLandFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaMidLandFcstApiBody with _$KmaMidLandFcstApiBody {
  const factory KmaMidLandFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaMidLandFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaMidLandFcstApiBody;

  factory KmaMidLandFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaMidLandFcstApiItems with _$KmaMidLandFcstApiItems {
  const factory KmaMidLandFcstApiItems({
    @JsonKey(name: 'item') required List<KmaMidLandFcstApiItem> item,
  }) = _KmaMidLandFcstApiItems;

  factory KmaMidLandFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiItemsFromJson(json);
}

// 개별 예보 아이템 모델 (핵심 데이터)
@freezed
abstract class KmaMidLandFcstApiItem with _$KmaMidLandFcstApiItem {
  const factory KmaMidLandFcstApiItem({
    required String regId, // 지역 코드 (예: 11B00000)
    @JsonKey(name: 'rnSt4Am') int? rnSt4Am,
    @JsonKey(name: 'rnSt4Pm') int? rnSt4Pm,
    @JsonKey(name: 'wf4Am') String? wf4Am,
    @JsonKey(name: 'wf4Pm') String? wf4Pm,

    @JsonKey(name: 'rnSt5Am') int? rnSt5Am,
    @JsonKey(name: 'rnSt5Pm') int? rnSt5Pm,
    @JsonKey(name: 'wf5Am') String? wf5Am,
    @JsonKey(name: 'wf5Pm') String? wf5Pm,

    @JsonKey(name: 'rnSt6Am') int? rnSt6Am,
    @JsonKey(name: 'rnSt6Pm') int? rnSt6Pm,
    @JsonKey(name: 'wf6Am') String? wf6Am,
    @JsonKey(name: 'wf6Pm') String? wf6Pm,

    @JsonKey(name: 'rnSt7Am') int? rnSt7Am,
    @JsonKey(name: 'rnSt7Pm') int? rnSt7Pm,
    @JsonKey(name: 'wf7Am') String? wf7Am,
    @JsonKey(name: 'wf7Pm') String? wf7Pm,
  }) = _KmaMidLandFcstApiItem;

  factory KmaMidLandFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaMidLandFcstApiItemFromJson(json);
}
