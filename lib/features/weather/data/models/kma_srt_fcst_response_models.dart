import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/weather/domain/entities/daily_short_term_weather_entity.dart';
import 'package:ai_weather/features/weather/domain/enums/weather_enums.dart';
import 'package:ai_weather/features/weather/utils/weather_api_utils.dart';

part 'kma_srt_fcst_response_models.freezed.dart';
part 'kma_srt_fcst_response_models.g.dart';

@freezed
abstract class KmaSrtFcstApiResponse with _$KmaSrtFcstApiResponse {
  const KmaSrtFcstApiResponse._();
  const factory KmaSrtFcstApiResponse({
    @JsonKey(name: 'response') required KmaSrtFcstApiResult result,
  }) = _KmaSrtFcstApiResponse;

  factory KmaSrtFcstApiResponse.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiResponseFromJson(json);

  (SkyStatus, PrecipitationType) _getStatusForTime(
      Map<String, Map<String, String>> timeGroupedItems, String targetTime) {
    var data = timeGroupedItems[targetTime];

    if (data == null && timeGroupedItems.isNotEmpty) {
      data = targetTime == '0900'
          ? timeGroupedItems.values.first
          : timeGroupedItems.values.last;
    }

    if (data == null) return (SkyStatus.none, PrecipitationType.none);

    return (
    SkyStatus.fromCode(data['SKY'] ?? '1'),
    PrecipitationType.fromCode(data['PTY'] ?? '0'),
    );
  }

  int _calculateMaxPop(Map<String, Map<String, String>> timeGroupedItems) {
    int maxPop = 0;
    for (var timeData in timeGroupedItems.values) {
      final pop = int.tryParse(timeData['POP'] ?? '0') ?? 0;
      maxPop = max(maxPop, pop);
    }
    return maxPop;
  }

  List<DailyShortTermWeather> toDailyEntityList(
      {required DateTime maxValidDate, required String todayDateStr}) {
    final items = result.body.items.item;
    final Map<String, Map<String, Map<String, String>>> dailyGroupedItems = {};

    for (var item in items) {
      final year = int.parse(item.fcstDate.substring(0, 4));
      final month = int.parse(item.fcstDate.substring(4, 6));
      final day = int.parse(item.fcstDate.substring(6, 8));
      final itemDate = DateTime(year, month, day);

      if (itemDate.isAfter(maxValidDate)) continue;

      final timeKey = (item.category == 'TMN' || item.category == 'TMX') ? '0000' : item.fcstTime;

      dailyGroupedItems.putIfAbsent(item.fcstDate, () => {});
      dailyGroupedItems[item.fcstDate]!
          .putIfAbsent(timeKey, () => {})[item.category] = item.fcstValue;
    }

    final List<DailyShortTermWeather> dailyList = [];

    dailyGroupedItems.forEach((dateStr, timeGroupedItems) {
      if (dateStr == todayDateStr) return; // 오늘 날짜 제외 (별도 처리)

      final tmnValue = timeGroupedItems['0000']?['TMN'];
      final tmxValue = timeGroupedItems['0000']?['TMX'];

      // 최저/최고 기온이 모두 있어야 신뢰할 수 있는 단기 예보로 간주
      if (tmnValue != null && tmxValue != null) {
        final currentDay = DateTime(
          int.parse(dateStr.substring(0, 4)),
          int.parse(dateStr.substring(4, 6)),
          int.parse(dateStr.substring(6, 8)),
        );

        final amStatus = _getStatusForTime(timeGroupedItems, '0900');
        final pmStatus = _getStatusForTime(timeGroupedItems, '1500');

        final tmn = double.tryParse(tmnValue) ?? 0.0;
        final tmx = double.tryParse(tmxValue) ?? 0.0;

        dailyList.add(DailyShortTermWeather(
          date: currentDay,
          minTemperature: tmn,
          maxTemperature: tmx,
          tempRange: tmx - tmn,
          morningSkyStatus: amStatus.$1,
          afternoonSkyStatus: pmStatus.$1,
          morningPrecipitationType: amStatus.$2,
          afternoonPrecipitationType: pmStatus.$2,
          maxPop: _calculateMaxPop(timeGroupedItems),
        ));
      }
    });

    return dailyList..sort((a, b) => a.date.compareTo(b.date));
  }

  DailyShortTermWeather toMinMaxEntity(DateTime targetDate) {
    final items = result.body.items.item;
    final targetDateStr = WeatherApiUtils.formatDateToYYYYMMDD(targetDate);

    final Map<String, Map<String, String>> timeGroupedItems = {};
    double? minTemp;
    double? maxTemp;

    for (var item in items) {
      if (item.fcstDate == targetDateStr) {
        if (item.category == 'TMN') minTemp = double.tryParse(item.fcstValue);
        if (item.category == 'TMX') maxTemp = double.tryParse(item.fcstValue);

        timeGroupedItems.putIfAbsent(item.fcstTime, () => {})[item.category] = item.fcstValue;
      }
    }

    final amStatus = _getStatusForTime(timeGroupedItems, '0900');
    final pmStatus = _getStatusForTime(timeGroupedItems, '1500');

    return DailyShortTermWeather(
      date: targetDate,
      minTemperature: minTemp ?? 0.0,
      maxTemperature: maxTemp ?? 0.0,
      tempRange: (maxTemp ?? 0.0) - (minTemp ?? 0.0),
      morningSkyStatus: amStatus.$1,
      afternoonSkyStatus: pmStatus.$1,
      morningPrecipitationType: amStatus.$2,
      afternoonPrecipitationType: pmStatus.$2,
      maxPop: _calculateMaxPop(timeGroupedItems),
    );
  }
}

@freezed
abstract class KmaSrtFcstApiResult with _$KmaSrtFcstApiResult {
  const factory KmaSrtFcstApiResult({
    @JsonKey(name: 'header') required KmaSrtFcstApiHeader header,
    @JsonKey(name: 'body') required KmaSrtFcstApiBody body,
  }) = _KmaSrtFcstApiResult;

  factory KmaSrtFcstApiResult.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiResultFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiHeader with _$KmaSrtFcstApiHeader {
  const factory KmaSrtFcstApiHeader({
    @JsonKey(name: 'resultCode') required String resultCode,
    @JsonKey(name: 'resultMsg') required String resultMsg,
  }) = _KmaSrtFcstApiHeader;

  factory KmaSrtFcstApiHeader.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiHeaderFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiBody with _$KmaSrtFcstApiBody {
  const factory KmaSrtFcstApiBody({
    @JsonKey(name: 'dataType') required String dataType,
    @JsonKey(name: 'items') required KmaSrtFcstApiItems items,
    @JsonKey(name: 'pageNo') required int pageNo,
    @JsonKey(name: 'numOfRows') required int numOfRows,
    @JsonKey(name: 'totalCount') required int totalCount,
  }) = _KmaSrtFcstApiBody;

  factory KmaSrtFcstApiBody.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiBodyFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiItems with _$KmaSrtFcstApiItems {
  const factory KmaSrtFcstApiItems({
    @JsonKey(name: 'item') required List<KmaSrtFcstApiItem> item,
  }) = _KmaSrtFcstApiItems;

  factory KmaSrtFcstApiItems.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiItemsFromJson(json);
}

@freezed
abstract class KmaSrtFcstApiItem with _$KmaSrtFcstApiItem {
  const factory KmaSrtFcstApiItem({
    @JsonKey(name: 'baseDate') required String baseDate,
    @JsonKey(name: 'baseTime') required String baseTime,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'fcstDate') required String fcstDate,
    @JsonKey(name: 'fcstTime') required String fcstTime,
    @JsonKey(name: 'fcstValue') required String fcstValue,
    @JsonKey(name: 'nx') required int nx,
    @JsonKey(name: 'ny') required int ny,
  }) = _KmaSrtFcstApiItem;

  factory KmaSrtFcstApiItem.fromJson(Map<String, dynamic> json) =>
      _$KmaSrtFcstApiItemFromJson(json);
}