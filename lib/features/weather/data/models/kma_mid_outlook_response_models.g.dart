// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_mid_outlook_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaMidOutlookApiResponse _$KmaMidOutlookApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaMidOutlookApiResponse(
  response: KmaMidOutlookApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaMidOutlookApiResponseToJson(
  _KmaMidOutlookApiResponse instance,
) => <String, dynamic>{'response': instance.response};

_KmaMidOutlookApiResult _$KmaMidOutlookApiResultFromJson(
  Map<String, dynamic> json,
) => _KmaMidOutlookApiResult(
  header: KmaMidOutlookApiHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaMidOutlookApiBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaMidOutlookApiResultToJson(
  _KmaMidOutlookApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaMidOutlookApiHeader _$KmaMidOutlookApiHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaMidOutlookApiHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaMidOutlookApiHeaderToJson(
  _KmaMidOutlookApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaMidOutlookApiBody _$KmaMidOutlookApiBodyFromJson(
  Map<String, dynamic> json,
) => _KmaMidOutlookApiBody(
  dataType: json['dataType'] as String,
  items: KmaKmaMidOutlookApiItems.fromJson(
    json['items'] as Map<String, dynamic>,
  ),
  pageNo: (json['pageNo'] as num).toInt(),
  numOfRows: (json['numOfRows'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$KmaMidOutlookApiBodyToJson(
  _KmaMidOutlookApiBody instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'items': instance.items,
  'pageNo': instance.pageNo,
  'numOfRows': instance.numOfRows,
  'totalCount': instance.totalCount,
};

_KmaKmaMidOutlookApiItems _$KmaKmaMidOutlookApiItemsFromJson(
  Map<String, dynamic> json,
) => _KmaKmaMidOutlookApiItems(
  item: (json['item'] as List<dynamic>)
      .map((e) => KmaMidOutlookApiItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$KmaKmaMidOutlookApiItemsToJson(
  _KmaKmaMidOutlookApiItems instance,
) => <String, dynamic>{'item': instance.item};

_KmaMidOutlookApiItem _$KmaMidOutlookApiItemFromJson(
  Map<String, dynamic> json,
) => _KmaMidOutlookApiItem(wfSv: json['wfSv'] as String);

Map<String, dynamic> _$KmaMidOutlookApiItemToJson(
  _KmaMidOutlookApiItem instance,
) => <String, dynamic>{'wfSv': instance.wfSv};
