import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/common/utils/network_utils.dart';

final dioProvider = Provider<Dio>((ref) {
  return createAndConfigureDio();
});
