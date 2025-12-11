// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_mid_land_fcst_response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KmaMidLandFcstApiResponse _$KmaMidLandFcstApiResponseFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiResponse(
  response: KmaMidLandFcstApiResult.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$KmaMidLandFcstApiResponseToJson(
  _KmaMidLandFcstApiResponse instance,
) => <String, dynamic>{'response': instance.response};

_KmaMidLandFcstApiResult _$KmaMidLandFcstApiResultFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiResult(
  header: KmaMidLandFcstApiHeader.fromJson(
    json['header'] as Map<String, dynamic>,
  ),
  body: KmaMidLandFcstApiBody.fromJson(json['body'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KmaMidLandFcstApiResultToJson(
  _KmaMidLandFcstApiResult instance,
) => <String, dynamic>{'header': instance.header, 'body': instance.body};

_KmaMidLandFcstApiHeader _$KmaMidLandFcstApiHeaderFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiHeader(
  resultCode: json['resultCode'] as String,
  resultMsg: json['resultMsg'] as String,
);

Map<String, dynamic> _$KmaMidLandFcstApiHeaderToJson(
  _KmaMidLandFcstApiHeader instance,
) => <String, dynamic>{
  'resultCode': instance.resultCode,
  'resultMsg': instance.resultMsg,
};

_KmaMidLandFcstApiBody _$KmaMidLandFcstApiBodyFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiBody(
  dataType: json['dataType'] as String,
  items: KmaMidLandFcstApiItems.fromJson(json['items'] as Map<String, dynamic>),
  pageNo: (json['pageNo'] as num).toInt(),
  numOfRows: (json['numOfRows'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$KmaMidLandFcstApiBodyToJson(
  _KmaMidLandFcstApiBody instance,
) => <String, dynamic>{
  'dataType': instance.dataType,
  'items': instance.items,
  'pageNo': instance.pageNo,
  'numOfRows': instance.numOfRows,
  'totalCount': instance.totalCount,
};

_KmaMidLandFcstApiItems _$KmaMidLandFcstApiItemsFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiItems(
  item: (json['item'] as List<dynamic>)
      .map((e) => KmaMidLandFcstApiItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$KmaMidLandFcstApiItemsToJson(
  _KmaMidLandFcstApiItems instance,
) => <String, dynamic>{'item': instance.item};

_KmaMidLandFcstApiItem _$KmaMidLandFcstApiItemFromJson(
  Map<String, dynamic> json,
) => _KmaMidLandFcstApiItem(
  regId: json['regId'] as String,
  rnSt4Am: (json['rnSt4Am'] as num?)?.toInt(),
  rnSt4Pm: (json['rnSt4Pm'] as num?)?.toInt(),
  wf4Am: json['wf4Am'] as String?,
  wf4Pm: json['wf4Pm'] as String?,
  rnSt5Am: (json['rnSt5Am'] as num?)?.toInt(),
  rnSt5Pm: (json['rnSt5Pm'] as num?)?.toInt(),
  wf5Am: json['wf5Am'] as String?,
  wf5Pm: json['wf5Pm'] as String?,
  rnSt6Am: (json['rnSt6Am'] as num?)?.toInt(),
  rnSt6Pm: (json['rnSt6Pm'] as num?)?.toInt(),
  wf6Am: json['wf6Am'] as String?,
  wf6Pm: json['wf6Pm'] as String?,
  rnSt7Am: (json['rnSt7Am'] as num?)?.toInt(),
  rnSt7Pm: (json['rnSt7Pm'] as num?)?.toInt(),
  wf7Am: json['wf7Am'] as String?,
  wf7Pm: json['wf7Pm'] as String?,
);

Map<String, dynamic> _$KmaMidLandFcstApiItemToJson(
  _KmaMidLandFcstApiItem instance,
) => <String, dynamic>{
  'regId': instance.regId,
  'rnSt4Am': instance.rnSt4Am,
  'rnSt4Pm': instance.rnSt4Pm,
  'wf4Am': instance.wf4Am,
  'wf4Pm': instance.wf4Pm,
  'rnSt5Am': instance.rnSt5Am,
  'rnSt5Pm': instance.rnSt5Pm,
  'wf5Am': instance.wf5Am,
  'wf5Pm': instance.wf5Pm,
  'rnSt6Am': instance.rnSt6Am,
  'rnSt6Pm': instance.rnSt6Pm,
  'wf6Am': instance.wf6Am,
  'wf6Pm': instance.wf6Pm,
  'rnSt7Am': instance.rnSt7Am,
  'rnSt7Pm': instance.rnSt7Pm,
  'wf7Am': instance.wf7Am,
  'wf7Pm': instance.wf7Pm,
};
