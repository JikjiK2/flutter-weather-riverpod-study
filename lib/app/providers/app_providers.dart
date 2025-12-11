import 'package:dio/dio.dart';
import 'package:ai_weather/common/utils/network_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return createAndConfigureDio();
}
