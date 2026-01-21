import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ai_weather/features/location/data/models/google_geocoding_response_model.dart';

part 'google_geocoding_api_data_source.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com/maps/api/geocode/")
abstract class GoogleGeocodingApiDataSource {
  factory GoogleGeocodingApiDataSource(Dio dio, {String baseUrl}) =
      _GoogleGeocodingApiDataSource;

  @GET("json")
  Future<GoogleGeocodingResponse> reverseGeocode({
    @Query("latlng") required String latlng,
    @Query("language") String language = "ko",
  });

  @GET("json")
  Future<GoogleGeocodingResponse> searchAddress({
    @Query("address") required String address,
    @Query("language") String language = "ko",
    @Query("region") String region = "kr",
  });
}
