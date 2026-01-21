// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kma_short_term_api_data_source.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _KmaShortTermApiDataSource implements KmaShortTermApiDataSource {
  _KmaShortTermApiDataSource(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<KmaUltraSrtFcstApiResponse> getUltraSrtFcst({
    int numOfRows = 60,
    int pageNo = 1,
    String dataType = "JSON",
    required String baseDate,
    required String baseTime,
    required int nx,
    required int ny,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'base_date': baseDate,
      r'base_time': baseTime,
      r'nx': nx,
      r'ny': ny,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaUltraSrtFcstApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'getUltraSrtFcst',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaUltraSrtFcstApiResponse _value;
    try {
      _value = KmaUltraSrtFcstApiResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<KmaUltraSrtNcstApiResponse> getUltraSrtNcst({
    int numOfRows = 60,
    int pageNo = 1,
    String dataType = "JSON",
    required String baseDate,
    required String baseTime,
    required int nx,
    required int ny,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'base_date': baseDate,
      r'base_time': baseTime,
      r'nx': nx,
      r'ny': ny,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaUltraSrtNcstApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/getUltraSrtNcst',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaUltraSrtNcstApiResponse _value;
    try {
      _value = KmaUltraSrtNcstApiResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<KmaSrtFcstApiResponse> getShortTermForecast({
    int numOfRows = 60,
    int pageNo = 1,
    String dataType = "JSON",
    required String baseDate,
    required String baseTime,
    required int nx,
    required int ny,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'numOfRows': numOfRows,
      r'pageNo': pageNo,
      r'dataType': dataType,
      r'base_date': baseDate,
      r'base_time': baseTime,
      r'nx': nx,
      r'ny': ny,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<KmaSrtFcstApiResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/getVilageFcst',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late KmaSrtFcstApiResponse _value;
    try {
      _value = KmaSrtFcstApiResponse.fromJson(_result.data!);
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
