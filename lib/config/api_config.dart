import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static final String? kmaServiceKey = dotenv.env['KMA_API_KEY'];
  static final String? googleGeocodingApiKey = dotenv.env['GOOGLE_GEOCODING_API_KEY'];
}
