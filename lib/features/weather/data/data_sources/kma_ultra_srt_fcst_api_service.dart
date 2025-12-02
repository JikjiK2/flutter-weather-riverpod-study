import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';

part 'kma_ultra_srt_fcst_api_service.g.dart';

@RestApi(
  baseUrl:
      "https://apihub.kma.go.kr/api/typ02/openApi/VilageFcstInfoService_2.0/",
)
abstract class KmaUltraSrtFcstApiService {
  factory KmaUltraSrtFcstApiService(Dio dio, {String baseUrl}) =
      _KmaUltraSrtFcstApiService;

  @GET("getUltraSrtFcst")
  Future<KmaUltraSrtFcstApiResponse> getUltraSrtFcst({
    @Query("authKey") required String authKey,
    @Query("numOfRows") int numOfRows = 60,
    @Query("pageNo") int pageNo = 1,
    @Query("dataType") String dataType = "JSON",
    @Query("base_date") required String baseDate,
    @Query("base_time") required String baseTime,
    @Query("nx") required int nx,
    @Query("ny") required int ny,
  });
}
