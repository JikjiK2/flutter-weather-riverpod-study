// import 'package:ai_weather/features/clothing/presentation/screens/clothing_recommendation_screen.dart';
// import 'package:ai_weather/features/location/data/models/address_model.dart';
// import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
// import 'package:ai_weather/utils/app_logger.dart';
// import 'package:ai_weather/common/utils/error_utils.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
// import 'package:geolocator/geolocator.dart';

// class WeatherScreen extends ConsumerWidget {
//   const WeatherScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final asyncHourlyWeather = ref.watch(currentWeatherProvider);
//     final asyncAddress = ref.watch(currentAddressProvider);
//     final asyncGpsStatus = ref.watch(gpsStatusProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Weather App'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: () async {
//               appLogger.i("새로고침 버튼 클릭됨.");
//               // 컨텍스트가 여전히 유효한지 확인
//               if (!context.mounted) return;

//               // 먼저 GPS 서비스 활성화 상태를 확인
//               final serviceEnabled =
//                   await Geolocator.isLocationServiceEnabled();
//               if (!serviceEnabled) {
//                 appLogger.w("새로고침 시 GPS 비활성화 확인. 사용자에게 활성화 요청.");
//                 // 서비스가 비활성화된 경우, 사용자에게 알림
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext dialogContext) => AlertDialog(
//                     title: const Text('위치 서비스 비활성화'),
//                     content: const Text(
//                       '현재 위치의 정확한 날씨를 가져오려면 위치 서비스를 활성화해야 합니다.',
//                     ),
//                     actions: [
//                       TextButton(
//                         child: const Text('취소'),
//                         onPressed: () => Navigator.of(dialogContext).pop(),
//                       ),
//                       TextButton(
//                         child: const Text('설정 열기'),
//                         onPressed: () async {
//                           await Geolocator.openLocationSettings();
//                           Navigator.of(dialogContext).pop();
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//                 return; // 함수 종료
//               }

//               // GPS 서비스는 켜져있지만, 권한이 거부된 경우 확인
//               var permission = await Geolocator.checkPermission();
//               if (permission == LocationPermission.denied ||
//                   permission == LocationPermission.deniedForever) {
//                 appLogger.w("새로고침 시 위치 권한 거부 확인. 사용자에게 설정 변경 요청.");
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext dialogContext) => AlertDialog(
//                     title: const Text('위치 권한 필요'),
//                     content: const Text(
//                       '날씨 정보를 업데이트하려면 위치 권한이 필요합니다. 앱 설정에서 권한을 허용해주세요.',
//                     ),
//                     actions: [
//                       TextButton(
//                         child: const Text('취소'),
//                         onPressed: () => Navigator.of(dialogContext).pop(),
//                       ),
//                       TextButton(
//                         child: const Text('설정 열기'),
//                         onPressed: () async {
//                           await Geolocator.openAppSettings();
//                           Navigator.of(dialogContext).pop();
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//                 return; // 함수 종료
//               }

//               // 모든 조건이 충족되면 데이터 새로고침
//               appLogger.i("GPS 활성화 및 권한 확인됨. 데이터 새로고침 실행.");
//               ref.invalidate(currentLocationProvider);
//               ref.invalidate(currentAddressProvider);
//               ref.invalidate(hourlyWeatherListProvider);
//               ref.invalidate(gpsStatusProvider);
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: asyncAddress.when(
//           loading: () => const Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircularProgressIndicator(),
//               SizedBox(height: 10),
//               Text('현재 위치 확인 중...'),
//             ],
//           ),
//           error: (error, stackTrace) {
//             appLogger.e(
//               'WeatherScreen: 위치 로딩 에러: $error',
//               error: error,
//               stackTrace: stackTrace,
//             );
//             String errorMessage = parseErrorMessage(error);
//             WidgetsBinding.instance.addPostFrameCallback((_) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text(errorMessage),
//                   action: SnackBarAction(
//                     label: '설정으로 이동',
//                     onPressed: () async {
//                       final result = await Geolocator.openLocationSettings();
//                       appLogger.i('위치 설정 화면 이동 결과: $result');
//                       if (result) {
//                         // 사용자가 설정 변경 후 앱으로 돌아올 수 있도록 안내
//                         // ref.invalidate(currentLocationProvider);
//                         // 설정을 변경했다면 Provider를 무효화하여 재로딩 시도
//                       }
//                     },
//                   ),
//                   duration: const Duration(seconds: 10),
//                 ),
//               );
//             });
//             return Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(
//                       Icons.location_off,
//                       size: 50,
//                       color: Colors.grey,
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       '위치 정보를 가져올 수 없습니다.',
//                       style: Theme.of(context).textTheme.headlineSmall,
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       '${error.toString().split(':')[0].replaceAll('Exception: ', '')}\n\n위치 설정으로 이동하여 활성화 또는 권한을 허용해주세요.',
//                       style: Theme.of(context).textTheme.bodyMedium,
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 24),
//                     ElevatedButton.icon(
//                       icon: const Icon(Icons.settings),
//                       label: const Text('위치 설정 열기'),
//                       onPressed: () async {
//                         await Geolocator.openLocationSettings();
//                         // 사용자가 설정에서 돌아오면 Provider를 새로고침하여 다시 위치를 가져오도록 시도
//                         ref.invalidate(currentLocationProvider);
//                       },
//                     ),
//                     const SizedBox(height: 12),
//                     ElevatedButton.icon(
//                       icon: const Icon(Icons.refresh),
//                       label: const Text('다시 시도'),
//                       onPressed: () {
//                         ref.invalidate(
//                           currentLocationProvider,
//                         ); // Provider를 무효화하여 재로딩 시도
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           data: (address) {
//             String displayAddress = address.displayAddress;
//             return Column(
//               children: [
//                 asyncGpsStatus.when(
//                   loading: () => const Text('GPS 상태 확인 중...'),
//                   error: (err, stack) => const Text('GPS 상태를 알 수 없습니다.'),
//                   data: (isEnabled) => isEnabled
//                       ? const Icon(Icons.gps_fixed)
//                       : const Icon(Icons.gps_off),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Text(
//                     '주소: $displayAddress',
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 Expanded(
//                   child: asyncHourlyWeather.when(
//                     loading: () => const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircularProgressIndicator(),
//                         SizedBox(height: 10),
//                         Text('날씨 정보 불러오는 중...'),
//                       ],
//                     ),
//                     error: (error, stackTrace) =>
//                         Text('날씨 정보를 가져오는 데 실패했습니다: ${error.toString()}'),
//                     data: (weatherList) {
//                       if (weatherList.isEmpty) {
//                         return const Text(
//                           '날씨 데이터가 없습니다. (KMA API 응답에 item이 없거나 에러)',
//                         );
//                       }
//                       final currentHourWeather = weatherList.first;
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             '예보 시각: ${currentHourWeather.forecastDateTime.toLocal().hour}시',
//                           ),
//                           Text('기온: ${currentHourWeather.temperature}°C'),
//                           Text(
//                             '체감 온도: ${currentHourWeather.feelsLikeTemperature.toStringAsFixed(1)}°C',
//                           ),
//                           Text(
//                             '하늘 상태: ${currentHourWeather.skyStatus.description}',
//                           ),
//                           Text(
//                             '강수 형태: ${currentHourWeather.precipitationType.description}',
//                           ),
//                           Text('습도: ${currentHourWeather.humidity}%'),
//                           const SizedBox(height: 20),
//                           ElevatedButton.icon(
//                             // <-- 이 버튼을 추가합니다.
//                             icon: const Icon(Icons.checkroom),
//                             label: const Text('오늘의 옷차림 추천 보기'),
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) =>
//                                       ClothingRecommendationScreen(
//                                         currentHourWeather:
//                                             currentHourWeather, // 현재 시간 날씨 정보 전달
//                                       ),
//                                 ),
//                               );
//                             },
//                           ),
//                           const Text('--- 상세 예보 ---'),
//                           Expanded(
//                             child: ListView.builder(
//                               itemCount: weatherList.length,
//                               itemBuilder: (context, index) {
//                                 final item = weatherList[index];
//                                 return ListTile(
//                                   title: Text(
//                                     '${item.forecastDateTime.toLocal().hour}시  ${item.temperature}°C',
//                                   ),
//                                   subtitle: Text(
//                                     '${item.skyStatus.description}, ${item.precipitationType.description}',
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
