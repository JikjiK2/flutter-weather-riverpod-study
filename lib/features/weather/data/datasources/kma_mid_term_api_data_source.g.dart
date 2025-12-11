// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_mid_term_api_data_source.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _KmaMidTermApiDataSource implements KmaMidTermApiDataSource {
  _KmaMidTermApiDataSource(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??=
        'https://apihub.kma.go.kr/api/typ02/openApi/MidFcstInfoService/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<KmaMidTmpFcstApiResponse> getMidTermTemperatureForecast({
    required String authKey,
    int numOfRows = 10,
    int pageNo = 1,
    String dataType = "JSON",
    required String regId,
    required String tmFc,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'authKey': authKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'regId': regId,
      r'tmFc': tmFc,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaMidTmpFcstApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'getMidTa',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaMidTmpFcstApiResponse _value;
    try {
      _value = KmaMidTmpFcstApiResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<KmaMidLandFcstApiResponse> getMidTermLandForecast({
    required String authKey,
    int numOfRows = 10,
    int pageNo = 1,
    String dataType = "JSON",
    required String regId,
    required String tmFc,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'authKey': authKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'regId': regId,
      r'tmFc': tmFc,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaMidLandFcstApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'getMidLandFcst',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaMidLandFcstApiResponse _value;
    try {
      _value = KmaMidLandFcstApiResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<KmaMidOutlookApiResponse> getMidTermOutlook({
    required String authKey,
    int numOfRows = 10,
    int pageNo = 1,
    String dataType = "JSON",
    required String stnId,
    required String tmFc,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'authKey': authKey,
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'stnId': stnId,
      r'tmFc': tmFc,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaMidOutlookApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'getMidFcst',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaMidOutlookApiResponse _value;
    try {
      _value = KmaMidOutlookApiResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
