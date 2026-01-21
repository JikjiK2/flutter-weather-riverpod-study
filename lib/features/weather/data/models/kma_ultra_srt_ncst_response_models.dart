import 'package:ai_weather/features/weather/domain/entities/current_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/utils/weather_formatter_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kma_ultra_srt_ncst_response_models.freezed.dart';

part 'kma_ultra_srt_ncst_response_models.g.dart';

@freezed
abstract class KmaUltraSrtNcstApiResponse with _$KmaUltraSrtNcstApiResponse {
  const KmaUltraSrtNcstApiResponse._();
  const factory KmaUltraSrtNcstApiResponse({
    @JsonKey(name: 'response') required KmaUltraSrtNcstApiResult result,
  }) = _KmaUltraSrtNcstApiResponse;

  factory KmaUltraSrtNcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiResponseFromJson(json);

  CurrentWeather toEntity() {
    final items = result.body.items.item;
    if (items.isEmpty) {
      throw Exception('초단기실황 데이터가 없습니다.');
    }

    final Map<String, String> dataMap = {
      for (var item in items) item.category: item.obsrValue
    };

    final double temperature = double.tryParse(dataMap['T1H'] ?? '0.0') ?? 0.0;
    final int humidity = int.tryParse(dataMap['REH'] ?? '0') ?? 0;
    final double windSpeed = double.tryParse(dataMap['WSD'] ?? '0.0') ?? 0.0;
    final int windDirection = int.tryParse(dataMap['VEC'] ?? '0') ?? 0;

    final firstItem = items.first;
    final dateTime = DateTime(
      int.parse(firstItem.baseDate.substring(0, 4)),
      int.parse(firstItem.baseDate.substring(4, 6)),
      int.parse(firstItem.baseDate.substring(6, 8)),
      int.parse(firstItem.baseTime.substring(0, 2)),
      int.parse(firstItem.baseTime.substring(2, 4)),
    );

    return CurrentWeather(
      dateTime: dateTime,
      temperature: temperature,
      humidity: humidity,
      windSpeed: windSpeed,
      windDirection: windDirection,
      windDirectionText: WeatherFormatterUtils.getWindDirectionText(windDirection),
      precipitationType: PrecipitationType.fromCode(dataMap['PTY'] ?? '0'),
      precipitationAmount: _parseRainfall(dataMap['RN1']),
      feelsLikeTemperature: 0.0,
    );
  }

  double _parseRainfall(String? val) {
    if (val == null || val == '강수없음' || val.contains('mm 미만')) return 0.0;
    return double.tryParse(val.replaceAll('mm', '')) ?? 0.0;
  }
}

@freezed
abstract class KmaUltraSrtNcstApiResult with _$KmaUltraSrtNcstApiResult {
  const factory KmaUltraSrtNcstApiResult({
    @JsonKey(name: 'header') required KmaUltraSrtNcstApiHeader header,
    @JsonKey(name: 'body') required KmaUltraSrtNcstApiBody body,
  }) = _KmaUltraSrtNcstApiResult;

  factory KmaUltraSrtNcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiResultFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiHeader with _$KmaUltraSrtNcstApiHeader {
  const factory KmaUltraSrtNcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaUltraSrtNcstApiHeader;

  factory KmaUltraSrtNcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiBody with _$KmaUltraSrtNcstApiBody {
  const factory KmaUltraSrtNcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaUltraSrtNcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaUltraSrtNcstApiBody;

  factory KmaUltraSrtNcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiBodyFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiItems with _$KmaUltraSrtNcstApiItems {
  const factory KmaUltraSrtNcstApiItems({
    @JsonKey(name: 'item') required List<KmaUltraSrtNcstApiItem> item,
  }) = _KmaUltraSrtNcstApiItems;

  factory KmaUltraSrtNcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiItemsFromJson(json);
}

@freezed
abstract class KmaUltraSrtNcstApiItem with _$KmaUltraSrtNcstApiItem {
  const factory KmaUltraSrtNcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'obsrValue') required String obsrValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaUltraSrtNcstApiItem;

  factory KmaUltraSrtNcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaUltraSrtNcstApiItemFromJson(json);
}
