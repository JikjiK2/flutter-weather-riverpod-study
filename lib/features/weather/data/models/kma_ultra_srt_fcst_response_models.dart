import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/entities/hourly_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';

part 'kma_ultra_srt_fcst_response_models.freezed.dart';

part 'kma_ultra_srt_fcst_response_models.g.dart';

@freezed
abstract class KmaUltraSrtFcstApiResponse with _$KmaUltraSrtFcstApiResponse {
  const KmaUltraSrtFcstApiResponse._();

  const factory KmaUltraSrtFcstApiResponse({
    @JsonKey(name: 'response') required KmaUltraSrtFcstApiResult response,
  }) = _KmaUltraSrtFcstApiResponse;

  factory KmaUltraSrtFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiResponseFromJson(json);

  List<HourlyWeather> toEntityList() {
    final items = response.body.items.item;

    final Map<String, List<KmaUltraSrtFcstApiItem>> groupedItems = {};
    for (var item in items) {
      final key = '${item.fcstDate}_${item.fcstTime}';
      groupedItems.putIfAbsent(key, () => []).add(item);
    }

    final List<HourlyWeather> hourlyWeatherList = [];
    groupedItems.forEach((key, itemsForThisHour) {
      final fcstDate = key.substring(0, 8);
      final fcstTime = key.substring(9, 13);

      hourlyWeatherList.add(
        itemsForThisHour.toEntity(
          fcstDate,
          fcstTime,
          itemsForThisHour.first.nx,
          itemsForThisHour.first.ny,
        ),
      );
    });

    hourlyWeatherList.sort(
      (a, b) => a.forecastDateTime.compareTo(b.forecastDateTime),
    );

    return hourlyWeatherList;
  }
}

@freezed
abstract class KmaUltraSrtFcstApiResult with _$KmaUltraSrtFcstApiResult {
  const factory KmaUltraSrtFcstApiResult({
    @JsonKey(name: 'header') required KmaUltraSrtFcstApiHeader header,
    @JsonKey(name: 'body') required KmaUltraSrtFcstApiBody body,
  }) = _KmaUltraSrtFcstApiResult;

  factory KmaUltraSrtFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiResultFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiHeader with _$KmaUltraSrtFcstApiHeader {
  const factory KmaUltraSrtFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaUltraSrtFcstApiHeader;

  factory KmaUltraSrtFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiBody with _$KmaUltraSrtFcstApiBody {
  const factory KmaUltraSrtFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaUltraSrtFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaUltraSrtFcstApiBody;

  factory KmaUltraSrtFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiItems with _$KmaUltraSrtFcstApiItems {
  const factory KmaUltraSrtFcstApiItems({
    @JsonKey(name: 'item') required List<KmaUltraSrtFcstApiItem> item,
  }) = _KmaUltraSrtFcstApiItems;

  factory KmaUltraSrtFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiItemsFromJson(json);
}

@freezed
abstract class KmaUltraSrtFcstApiItem with _$KmaUltraSrtFcstApiItem {
  const factory KmaUltraSrtFcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'fcstDate') required String fcstDate,
    @JsonKey(name: 'fcstTime') required String fcstTime,
    @JsonKey(name: 'fcstValue') required String fcstValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaUltraSrtFcstApiItem;

  factory KmaUltraSrtFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtFcstApiItemFromJson(json);
}

extension KmaUltraSrtFcstApiItemX on List<KmaUltraSrtFcstApiItem> {
  HourlyWeather toEntity(String fcstDate, String fcstTime, int nx, int ny) {
    final year = int.parse(fcstDate.substring(0, 4));
    final month = int.parse(fcstDate.substring(4, 6));
    final day = int.parse(fcstDate.substring(6, 8));
    final hour = int.parse(fcstTime.substring(0, 2));
    final minute = int.parse(fcstTime.substring(2, 4));
    final forecastDateTime = DateTime(year, month, day, hour, minute);

    double temperature = 0.0;
    SkyStatus skyStatus = SkyStatus.none;
    PrecipitationType precipitationType = PrecipitationType.none;
    double precipitationAmount = 0.0;
    int humidity = 0;
    double windSpeed = 0.0;
    int windDirection = 0;
    Thunderbolt lightning = Thunderbolt.none;

    for (final item in this) {
      switch (item.category) {
        case 'T1H':
          temperature = double.tryParse(item.fcstValue) ?? temperature;
          break;
        case 'SKY': // 하늘상태 (KMA 코드 1:맑음, 3:구름많음, 4:흐림)
          skyStatus = SkyStatus.fromCode(item.fcstValue);
          break;
        case 'PTY': // 강수형태 (KMA 코드 0:없음, 1:비, 2:비/눈, 3:눈, 4:소나기)
          precipitationType = PrecipitationType.fromCode(item.fcstValue);
          break;
        case 'RN1': // 1시간 강수량 (String 값 "강수없음", "1mm 미만" 등 처리)
          if (item.fcstValue == '강수없음' || item.fcstValue.contains('mm 미만')) {
            precipitationAmount = 0.0;
          } else {
            precipitationAmount =
                double.tryParse(item.fcstValue) ?? precipitationAmount;
          }
          break;
        case 'REH':
          humidity = int.tryParse(item.fcstValue) ?? humidity;
          break;
        case 'WSD':
          windSpeed = double.tryParse(item.fcstValue) ?? windSpeed;
          break;
        case 'VEC':
          windDirection = int.tryParse(item.fcstValue) ?? windDirection;
          break;
        case 'LGT': // 낙뢰 (0:없음, 1:있음)
          lightning = Thunderbolt.fromCode(item.fcstValue);
          break;
      }
    }

    final calculatedFeelsLike = temperature - (windSpeed * 1.5);

    return HourlyWeather(
      forecastDateTime: forecastDateTime,
      nx: nx,
      ny: ny,
      temperature: temperature,
      feelsLikeTemperature: calculatedFeelsLike,
      skyStatus: skyStatus,
      precipitationType: precipitationType,
      precipitationAmount: precipitationAmount,
      humidity: humidity,
      windSpeed: windSpeed,
      windDirection: windDirection,
      lightning: lightning,
    );
  }
}
