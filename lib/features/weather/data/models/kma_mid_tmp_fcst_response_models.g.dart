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
  taMin4: (json['taMin4'] as num?)?.toInt(),
  taMin4Low: (json['taMin4Low'] as num?)?.toInt(),
  taMin4High: (json['taMin4High'] as num?)?.toInt(),
  taMax4: (json['taMax4'] as num?)?.toInt(),
  taMax4Low: (json['taMax4Low'] as num?)?.toInt(),
  taMax4High: (json['taMax4High'] as num?)?.toInt(),
  taMin5: (json['taMin5'] as num?)?.toInt(),
  taMin5Low: (json['taMin5Low'] as num?)?.toInt(),
  taMin5High: (json['taMin5High'] as num?)?.toInt(),
  taMax5: (json['taMax5'] as num?)?.toInt(),
  taMax5Low: (json['taMax5Low'] as num?)?.toInt(),
  taMax5High: (json['taMax5High'] as num?)?.toInt(),
  taMin6: (json['taMin6'] as num?)?.toInt(),
  taMin6Low: (json['taMin6Low'] as num?)?.toInt(),
  taMin6High: (json['taMin6High'] as num?)?.toInt(),
  taMax6: (json['taMax6'] as num?)?.toInt(),
  taMax6Low: (json['taMax6Low'] as num?)?.toInt(),
  taMax6High: (json['taMax6High'] as num?)?.toInt(),
  taMin7: (json['taMin7'] as num?)?.toInt(),
  taMin7Low: (json['taMin7Low'] as num?)?.toInt(),
  taMin7High: (json['taMin7High'] as num?)?.toInt(),
  taMax7: (json['taMax7'] as num?)?.toInt(),
  taMax7Low: (json['taMax7Low'] as num?)?.toInt(),
  taMax7High: (json['taMax7High'] as num?)?.toInt(),
);

Map<String, dynamic> _$KmaMidTmpFcstApiItemToJson(
  _KmaMidTmpFcstApiItem instance,
) => <String, dynamic>{
  'regId': instance.regId,
  'taMin4': instance.taMin4,
  'taMin4Low': instance.taMin4Low,
  'taMin4High': instance.taMin4High,
  'taMax4': instance.taMax4,
  'taMax4Low': instance.taMax4Low,
  'taMax4High': instance.taMax4High,
  'taMin5': instance.taMin5,
  'taMin5Low': instance.taMin5Low,
  'taMin5High': instance.taMin5High,
  'taMax5': instance.taMax5,
  'taMax5Low': instance.taMax5Low,
  'taMax5High': instance.taMax5High,
  'taMin6': instance.taMin6,
  'taMin6Low': instance.taMin6Low,
  'taMin6High': instance.taMin6High,
  'taMax6': instance.taMax6,
  'taMax6Low': instance.taMax6Low,
  'taMax6High': instance.taMax6High,
  'taMin7': instance.taMin7,
  'taMin7Low': instance.taMin7Low,
  'taMin7High': instance.taMin7High,
  'taMax7': instance.taMax7,
  'taMax7Low': instance.taMax7Low,
  'taMax7High': instance.taMax7High,
};
