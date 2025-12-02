// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_ultra_srt_fcst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaUltraSrtFcstApiResponse _$KmaUltraSrtFcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstApiResponse(
  response: KmaUltraSrtFcstResponse.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaUltraSrtFcstApiResponseToJson(
  _KmaUltraSrtFcstApiResponse instance,
) => <String, dynamic>{'response': instance.response};

_KmaUltraSrtFcstResponse _$KmaUltraSrtFcstResponseFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstResponse(
  header: KmaUltraSrtFcstHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaUltraSrtFcstBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaUltraSrtFcstResponseToJson(
  _KmaUltraSrtFcstResponse instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaUltraSrtFcstHeader _$KmaUltraSrtFcstHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaUltraSrtFcstHeaderToJson(
  _KmaUltraSrtFcstHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaUltraSrtFcstBody _$KmaUltraSrtFcstBodyFromJson(Map<String, dynamic> json) =>
    _KmaUltraSrtFcstBody(
      dataType: json['dataType'] as String,
      items: KmaUltraSrtFcstItems.fromJson(
        json['items'] as Map<String, dynamic>,
      ),
      pageNo: (json['pageNo'] as num).toInt(),
      numOfRows: (json['numOfRows'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$KmaUltraSrtFcstBodyToJson(
  _KmaUltraSrtFcstBody instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'items': instance.items,
  'pageNo': instance.pageNo,
  'numOfRows': instance.numOfRows,
  'totalCount': instance.totalCount,
};

_KmaUltraSrtFcstItems _$KmaUltraSrtFcstItemsFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtFcstItems(
  item: (json['item'] as List<dynamic>)
      .map((e) => KmaUltraSrtFcstItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$KmaUltraSrtFcstItemsToJson(
  _KmaUltraSrtFcstItems instance,
) => <String, dynamic>{'item': instance.item};

_KmaUltraSrtFcstItem _$KmaUltraSrtFcstItemFromJson(Map<String, dynamic> json) =>
    _KmaUltraSrtFcstItem(
      baseDate: json['baseDate'] as String,
      baseTime: json['baseTime'] as String,
      category: json['category'] as String,
      fcstDate: json['fcstDate'] as String,
      fcstTime: json['fcstTime'] as String,
      fcstValue: json['fcstValue'] as String,
      nx: (json['nx'] as num).toInt(),
      ny: (json['ny'] as num).toInt(),
    );

Map<String, dynamic> _$KmaUltraSrtFcstItemToJson(
  _KmaUltraSrtFcstItem instance,
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
