// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_srt_fcst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaSrtFcstApiResponse _$KmaSrtFcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaSrtFcstApiResponse(
  result: KmaSrtFcstApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaSrtFcstApiResponseToJson(
  _KmaSrtFcstApiResponse instance,
) => <String, dynamic>{'response': instance.result};

_KmaSrtFcstApiResult _$KmaSrtFcstApiResultFromJson(Map<String, dynamic> json) =>
    _KmaSrtFcstApiResult(
      header: KmaSrtFcstApiHeader.fromJson(
        json['header'] as Map<String, dynamic>,
      ),
      body: KmaSrtFcstApiBody.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KmaSrtFcstApiResultToJson(
  _KmaSrtFcstApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaSrtFcstApiHeader _$KmaSrtFcstApiHeaderFromJson(Map<String, dynamic> json) =>
    _KmaSrtFcstApiHeader(
      resultCode: json['resultCode'] as String,
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$KmaSrtFcstApiHeaderToJson(
  _KmaSrtFcstApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaSrtFcstApiBody _$KmaSrtFcstApiBodyFromJson(Map<String, dynamic> json) =>
    _KmaSrtFcstApiBody(
      dataType: json['dataType'] as String,
      items: KmaSrtFcstApiItems.fromJson(json['items'] as Map<String, dynamic>),
      pageNo: (json['pageNo'] as num).toInt(),
      numOfRows: (json['numOfRows'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$KmaSrtFcstApiBodyToJson(_KmaSrtFcstApiBody instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'items': instance.items,
      'pageNo': instance.pageNo,
      'numOfRows': instance.numOfRows,
      'totalCount': instance.totalCount,
    };

_KmaSrtFcstApiItems _$KmaSrtFcstApiItemsFromJson(Map<String, dynamic> json) =>
    _KmaSrtFcstApiItems(
      item: (json['item'] as List<dynamic>)
          .map((e) => KmaSrtFcstApiItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KmaSrtFcstApiItemsToJson(_KmaSrtFcstApiItems instance) =>
    <String, dynamic>{'item': instance.item};

_KmaSrtFcstApiItem _$KmaSrtFcstApiItemFromJson(Map<String, dynamic> json) =>
    _KmaSrtFcstApiItem(
      baseDate: json['baseDate'] as String,
      baseTime: json['baseTime'] as String,
      category: json['category'] as String,
      fcstDate: json['fcstDate'] as String,
      fcstTime: json['fcstTime'] as String,
      fcstValue: json['fcstValue'] as String,
      nx: (json['nx'] as num).toInt(),
      ny: (json['ny'] as num).toInt(),
    );

Map<String, dynamic> _$KmaSrtFcstApiItemToJson(_KmaSrtFcstApiItem instance) =>
    <String, dynamic>{
      'baseDate': instance.baseDate,
      'baseTime': instance.baseTime,
      'category': instance.category,
      'fcstDate': instance.fcstDate,
      'fcstTime': instance.fcstTime,
      'fcstValue': instance.fcstValue,
      'nx': instance.nx,
      'ny': instance.ny,
    };
