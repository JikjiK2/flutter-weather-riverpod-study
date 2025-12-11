import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ai_weather/features/weather/data/models/kma_mid_tmp_fcst_response_models.dart'; // 중기 기온 응답
import 'package:ai_weather/features/weather/data/models/kma_mid_land_fcst_response_models.dart'; // 중기 육상 응답
import 'package:ai_weather/features/weather/data/models/kma_mid_outlook_response_models.dart'; // 중기 전망 응답

part 'kma_mid_term_api_data_source.g.dart';

@RestApi(
  baseUrl: "https://apihub.kma.go.kr/api/typ02/openApi/MidFcstInfoService/",
)
abstract class KmaMidTermApiDataSource {
  factory KmaMidTermApiDataSource(Dio dio, {String baseUrl}) =
      _KmaMidTermApiDataSource;

  // KMA 중기 기온 예보
  @GET('getMidTa')
  Future<KmaMidTmpFcstApiResponse> getMidTermTemperatureForecast({
    @Query('authKey') required String authKey,
    @Query('numOfRows') int numOfRows = 10,
    @Query('pageNo') int pageNo = 1,
    @Query('dataType') String dataType = "JSON",
    @Query('regId') required String regId,
    @Query('tmFc') required String tmFc,
  });

  // KMA 중기 육상 예보
  @GET('getMidLandFcst')
  Future<KmaMidLandFcstApiResponse> getMidTermLandForecast({
    @Query('authKey') required String authKey,
    @Query('numOfRows') int numOfRows = 10,
    @Query('pageNo') int pageNo = 1,
    @Query('dataType') String dataType = "JSON",
    @Query('regId') required String regId,
    @Query('tmFc') required String tmFc,
  });

  // KMA 중기 전망
  @GET('getMidFcst')
  Future<KmaMidOutlookApiResponse> getMidTermOutlook({
    @Query('authKey') required String authKey,
    @Query('numOfRows') int numOfRows = 10,
    @Query('pageNo') int pageNo = 1,
    @Query('dataType') String dataType = "JSON",
    @Query('stnId') required String stnId,
    @Query('tmFc') required String tmFc,
  });
}
