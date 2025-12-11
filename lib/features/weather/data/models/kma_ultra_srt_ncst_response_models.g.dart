// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_ultra_srt_ncst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaUltraSrtNcstApiResponse _$KmaUltraSrtNcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiResponse(
  result: KmaUltraSrtNcstApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaUltraSrtNcstApiResponseToJson(
  _KmaUltraSrtNcstApiResponse instance,
) => <String, dynamic>{'response': instance.result};

_KmaUltraSrtNcstApiResult _$KmaUltraSrtNcstApiResultFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiResult(
  header: KmaUltraSrtNcstApiHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaUltraSrtNcstApiBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaUltraSrtNcstApiResultToJson(
  _KmaUltraSrtNcstApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaUltraSrtNcstApiHeader _$KmaUltraSrtNcstApiHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaUltraSrtNcstApiHeaderToJson(
  _KmaUltraSrtNcstApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaUltraSrtNcstApiBody _$KmaUltraSrtNcstApiBodyFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiBody(
  dataType: json['dataType'] as String,
  items: KmaUltraSrtNcstApiItems.fromJson(
    json['items'] as Map<String, dynamic>,
  ),
  pageNo: (json['pageNo'] as num).toInt(),
  numOfRows: (json['numOfRows'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$KmaUltraSrtNcstApiBodyToJson(
  _KmaUltraSrtNcstApiBody instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'items': instance.items,
  'pageNo': instance.pageNo,
  'numOfRows': instance.numOfRows,
  'totalCount': instance.totalCount,
};

_KmaUltraSrtNcstApiItems _$KmaUltraSrtNcstApiItemsFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiItems(
  item: (json['item'] as List<dynamic>)
      .map((e) => KmaUltraSrtNcstApiItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$KmaUltraSrtNcstApiItemsToJson(
  _KmaUltraSrtNcstApiItems instance,
) => <String, dynamic>{'item': instance.item};

_KmaUltraSrtNcstApiItem _$KmaUltraSrtNcstApiItemFromJson(
  Map<String, dynamic> json,
) => _KmaUltraSrtNcstApiItem(
  baseDate: json['baseDate'] as String,
  baseTime: json['baseTime'] as String,
  category: json['category'] as String,
  obsrValue: json['obsrValue'] as String,
  nx: (json['nx'] as num).toInt(),
  ny: (json['ny'] as num).toInt(),
);

Map<String, dynamic> _$KmaUltraSrtNcstApiItemToJson(
  _KmaUltraSrtNcstApiItem instance,
) => <String, dynamic>{
  'baseDate': instance.baseDate,
  'baseTime': instance.baseTime,
  'category': instance.category,
  'obsrValue': instance.obsrValue,
  'nx': instance.nx,
  'ny': instance.ny,
};
