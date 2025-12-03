import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dio/dio.dart';

import 'package:ai_weather/features/weather/data/models/hourly_weather_model.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/datasources/kma_ultra_srt_fcst_api_service.dart';

import 'package:ai_weather/features/weather/utils/pointToLatLng.dart';
import 'package:ai_weather/features/weather/utils/KmaDateTime.dart';

class WeatherRepository {
  final KmaUltraSrtFcstApiService _kmaApiService;

  WeatherRepository(this._kmaApiService);

  Future<List<HourlyWeather>> getHourlyWeatherForCurrentLocation(
    double lat,
    double lon,
  ) async {
    final gridCoords = PointToLatLng.gpsToGRID(lat, lon);

    final nx = gridCoords['nx']!;
    final ny = gridCoords['ny']!;

    final baseDateTime = KmaDateTime.getUltraSrtFcstBaseDateTime(
      DateTime.now(),
    );
    try {
      final kmaResponse = await _kmaApiService.getUltraSrtFcst(
        authKey: dotenv.env['KMA_API_KEY']!,
        baseDate: baseDateTime['baseDate']!,
        baseTime: baseDateTime['baseTime']!,
        nx: nx,
        ny: ny,
        dataType: 'JSON',
      );

      if (kmaResponse.response.header.resultCode != '00') {
        throw Exception(
          'KMA API 호출 실패: ${kmaResponse.response.header.resultMsg}',
        );
      }

      final List<KmaUltraSrtFcstItem> kmaItems =
          kmaResponse.response.body.items.item;
      if (kmaItems.isEmpty) {
        return [];
      }

      final Map<String, List<KmaUltraSrtFcstItem>> itemsByForecastTime = {};

      for (final item in kmaItems) {
        final key = "${item.fcstDate}_${item.fcstTime}";
        itemsByForecastTime.putIfAbsent(key, () => []).add(item);
      }

      final List<HourlyWeather> hourlyWeatherList = [];
      itemsByForecastTime.forEach((key, itemsForThisHour) {
        if (itemsForThisHour.isNotEmpty) {
          final fcstDate = itemsForThisHour.first.fcstDate;
          final fcstTime = itemsForThisHour.first.fcstTime;
          final itemNx = itemsForThisHour.first.nx;
          final itemNy = itemsForThisHour.first.ny;

          hourlyWeatherList.add(
            HourlyWeather.fromForecastItems(
              fcstDate,
              fcstTime,
              itemNx,
              itemNy,
              itemsForThisHour,
            ),
          );
        }
      });

      hourlyWeatherList.sort(
        (a, b) => a.forecastDateTime.compareTo(b.forecastDateTime),
      );

      return hourlyWeatherList;
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(
          "네트워크 오류 (KMA API): ${e.response!.statusCode} - ${e.response!.statusMessage}",
        );
      } else {
        debugPrint("DioError Request: ${e.requestOptions}");
        throw Exception("네트워크 연결 오류: ${e.message}");
      }
    } catch (e) {
      debugPrint("날씨 데이터 로드 중 알 수 없는 오류 발생: $e");
      rethrow;
    }
  }
}
