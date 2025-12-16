import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:ai_weather/features/location/data/models/google_geocoding_response_model.dart';

part 'google_geocoding_api_data_source.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com/maps/api/geocode/")
abstract class GoogleGeocodingApiDataSource {
  factory GoogleGeocodingApiDataSource(Dio dio, {String baseUrl}) =
      _GoogleGeocodingApiDataSource;

  @GET("json")
  Future<GoogleGeocodingResponse> reverseGeocode({
    @Query("latlng") required String latlng,
    @Query("key") required String apiKey,
    @Query("language") String language = "ko",
  });
}
