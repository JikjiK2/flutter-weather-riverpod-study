import 'package:ai_weather/features/weather/data/models/kma_srt_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_fcst_response_models.dart';
import 'package:ai_weather/features/weather/data/models/kma_ultra_srt_ncst_response_models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'kma_short_term_api_data_source.g.dart';

@RestApi(
  baseUrl:
      "https://apihub.kma.go.kr/api/typ02/openApi/VilageFcstInfoService_2.0/",
)
abstract class KmaShortTermApiDataSource {
  factory KmaShortTermApiDataSource(Dio dio, {String baseUrl}) =
      _KmaShortTermApiDataSource;

  /// KMA 초단기 예보
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

  // KMA 초단기 실황
  @GET('/getUltraSrtNcst')
  Future<KmaUltraSrtNcstApiResponse> getUltraSrtNcst({
    @Query("authKey") required String authKey,
    @Query("numOfRows") int numOfRows = 60,
    @Query("pageNo") int pageNo = 1,
    @Query("dataType") String dataType = "JSON",
    @Query("base_date") required String baseDate,
    @Query("base_time") required String baseTime,
    @Query("nx") required int nx,
    @Query("ny") required int ny,
  });
  // KMA 단기 예보
  @GET('/getVilageFcst')
  Future<KmaSrtFcstApiResponse> getShortTermForecast({
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
