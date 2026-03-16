import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_short_term_api_data_source.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_mid_term_api_data_source.dart';
import 'package:ai_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ai_weather/features/weather/data/repositories/weather_repository_impl.dart';

part 'weather_providers.g.dart';

@Riverpod(keepAlive: true)
KmaShortTermApiDataSource kmaShortTermApiDataSource(Ref ref) {
  return KmaShortTermApiDataSource(
    ref.watch(dioProvider),
    baseUrl: "https://apihub.kma.go.kr/api/typ02/openApi/VilageFcstInfoService_2.0/",
  );
}

@Riverpod(keepAlive: true)
KmaMidTermApiDataSource kmaMidTermApiDataSource(Ref ref) {
  return KmaMidTermApiDataSource(
    ref.watch(dioProvider),
    baseUrl: "https://apihub.kma.go.kr/api/typ02/openApi/MidFcstInfoService/",
  );
}

@Riverpod(keepAlive: true)
WeatherRepository weatherRepository(Ref ref) {
  return ref.watch(weatherRepositoryImplProvider);
}
