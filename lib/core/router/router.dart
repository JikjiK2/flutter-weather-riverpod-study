import 'package:ai_weather/features/info/presentation/info_screen.dart';
import 'package:ai_weather/features/location/presentation/screens/search_address.dart';
import 'package:ai_weather/features/weather/presentation/screens/weather_api_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const WeatherScreen()),
    GoRoute(
      path: '/search_address',
      builder: (context, state) => const AddressSearchScreen(),
    ),
    GoRoute(path: '/info', builder: (context, state) => const InfoScreen()),
  ],
);
