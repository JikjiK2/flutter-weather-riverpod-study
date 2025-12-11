// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_ultra_srt_fcst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaUltraSrtFcstApiResponse _$KmaUltraSrtFcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiResponse(
  response: KmaUltraSrtFcstApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiResponseToJson(
  _KmaUltraSrtFcstApiResponse instance,
) => <String, dynamic>{'response': instance.response};

_KmaUltraSrtFcstApiResult _$KmaUltraSrtFcstApiResultFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiResult(
  header: KmaUltraSrtFcstApiHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaUltraSrtFcstApiBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiResultToJson(
  _KmaUltraSrtFcstApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaUltraSrtFcstApiHeader _$KmaUltraSrtFcstApiHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaUltraSrtFcstApiHeaderToJson(
  _KmaUltraSrtFcstApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaUltraSrtFcstApiBody _$KmaUltraSrtFcstApiBodyFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiBody(
  dataType: json['dataType'] as String,
  items: KmaUltraSrtFcstApiItems.fromJson(
    json['items'] as Map<String, dynamic>,
  ),
  pageNo: (json['pageNo'] as num).toInt(),
  numOfRows: (json['numOfRows'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiBodyToJson(
  _KmaUltraSrtFcstApiBody instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'items': instance.items,
  'pageNo': instance.pageNo,
  'numOfRows': instance.numOfRows,
  'totalCount': instance.totalCount,
};

_KmaUltraSrtFcstApiItems _$KmaUltraSrtFcstApiItemsFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiItems(
  item: (json['item'] as List<dynamic>)
      .map((e) => KmaUltraSrtFcstApiItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiItemsToJson(
  _KmaUltraSrtFcstApiItems instance,
) => <String, dynamic>{'item': instance.item};

_KmaUltraSrtFcstApiItem _$KmaUltraSrtFcstApiItemFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiItem(
  baseDate: json['baseDate'] as String,
  baseTime: json['baseTime'] as String,
  category: json['category'] as String,
  fcstDate: json['fcstDate'] as String,
  fcstTime: json['fcstTime'] as String,
  fcstValue: json['fcstValue'] as String,
  nx: (json['nx'] as num).toInt(),
  ny: (json['ny'] as num).toInt(),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiItemToJson(
  _KmaUltraSrtFcstApiItem instance,
) => <String, dynamic>{
  'baseDate': instance.baseDate,
  'baseTime': instance.baseTime,
  'category': instance.category,
  'fcstDate': instance.fcstDate,
  'fcstTime': instance.fcstTime,
  'fcstValue': instance.fcstValue,
  'nx': instance.nx,
  'ny': instance.ny,
};
