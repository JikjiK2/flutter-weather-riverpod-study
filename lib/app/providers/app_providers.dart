import 'package:ai_weather/config/api_config.dart';
import 'package:dio/dio.dart';
import 'package:ai_weather/common/utils/network_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = createAndConfigureDio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final host = options.uri.host;

        if (host.contains('kma.go.kr')) {
          options.queryParameters['authKey'] = ApiConfig.kmaServiceKey;
        }
        if (host.contains('googleapis.com')) {
          options.queryParameters['key'] = ApiConfig.googleGeocodingApiKey;
        }
        return handler.next(options);
      },
    ),
  );

  dio.interceptors.add(LogInterceptor(requestHeader: true));

  return dio;
}
