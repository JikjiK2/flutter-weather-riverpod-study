// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_mid_tmp_fcst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaMidTmpFcstApiResponse _$KmaMidTmpFcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaMidTmpFcstApiResponse(
  response: KmaMidTmpFcstApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaMidTmpFcstApiResponseToJson(
  _KmaMidTmpFcstApiResponse instance,
) => <String, dynamic>{'response': instance.response};

_KmaMidTmpFcstApiResult _$KmaMidTmpFcstApiResultFromJson(
  Map<String, dynamic> json,
) => _KmaMidTmpFcstApiResult(
  header: KmaMidTmpFcstApiHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaMidTmpFcstApiBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaMidTmpFcstApiResultToJson(
  _KmaMidTmpFcstApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaMidTmpFcstApiHeader _$KmaMidTmpFcstApiHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaMidTmpFcstApiHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaMidTmpFcstApiHeaderToJson(
  _KmaMidTmpFcstApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_MidTmpFcstApiBody _$MidTmpFcstApiBodyFromJson(Map<String, dynamic> json) =>
    _MidTmpFcstApiBody(
      dataType: json['dataType'] as String,
      items: KmaMidTmpFcstApiItems.fromJson(
        json['items'] as Map<String, dynamic>,
      ),
      pageNo: (json['pageNo'] as num).toInt(),
      numOfRows: (json['numOfRows'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$MidTmpFcstApiBodyToJson(_MidTmpFcstApiBody instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'items': instance.items,
      'pageNo': instance.pageNo,
      'numOfRows': instance.numOfRows,
      'totalCount': instance.totalCount,
    };

_MidTmpFcstApiItems _$MidTmpFcstApiItemsFromJson(Map<String, dynamic> json) =>
    _MidTmpFcstApiItems(
      item: (json['item'] as List<dynamic>)
          .map((e) => KmaMidTmpFcstApiItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MidTmpFcstApiItemsToJson(_MidTmpFcstApiItems instance) =>
    <String, dynamic>{'item': instance.item};

_KmaMidTmpFcstApiItem _$KmaMidTmpFcstApiItemFromJson(
  Map<String, dynamic> json,
) => _KmaMidTmpFcstApiItem(
  regId: json['regId'] as String,
  taMin4: (json['taMin4'] as num?)?.toDouble(),
  taMax4: (json['taMax4'] as num?)?.toDouble(),
  taMin5: (json['taMin5'] as num?)?.toDouble(),
  taMax5: (json['taMax5'] as num?)?.toDouble(),
  taMin6: (json['taMin6'] as num?)?.toDouble(),
  taMax6: (json['taMax6'] as num?)?.toDouble(),
  taMin7: (json['taMin7'] as num?)?.toDouble(),
  taMax7: (json['taMax7'] as num?)?.toDouble(),
);

Map<String, dynamic> _$KmaMidTmpFcstApiItemToJson(
  _KmaMidTmpFcstApiItem instance,
) => <String, dynamic>{
  'regId': instance.regId,
  'taMin4': instance.taMin4,
  'taMax4': instance.taMax4,
  'taMin5': instance.taMin5,
  'taMax5': instance.taMax5,
  'taMin6': instance.taMin6,
  'taMax6': instance.taMax6,
  'taMin7': instance.taMin7,
  'taMax7': instance.taMax7,
};
