import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static final String? kmaServiceKey = dotenv.env['KMA_API_KEY'];
}
