import 'package:ai_weather/features/location/data/datasources/location_platform_datasource.dart';
import 'package:ai_weather/features/location/data/repositories/location_repository_impl.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/features/location/domain/models/location_state_model.dart';
import 'package:ai_weather/utils/app_logger.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_weather/app/providers/app_providers.dart';
import 'package:ai_weather/features/location/data/datasources/google_geocoding_api_data_source.dart';
import 'package:ai_weather/features/location/data/repositories/location_repository.dart';
import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_providers.g.dart';

const double defaultLatitude = 37.5665;
const double defaultLongitude = 126.9780;

@Riverpod(keepAlive: true)
GoogleGeocodingApiDataSource googleGeocodingApiDataSource(Ref ref) {
  return GoogleGeocodingApiDataSource(ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
LocationPlatformDataSource locationPlatformDataSource(Ref ref) {
  return GeolocatorDataSourceImpl();
}

@Riverpod(keepAlive: true)
LocationRepository locationRepository(Ref ref) {
  return LocationRepositoryImpl(
    ref.read(googleGeocodingApiDataSourceProvider),
    ref.read(locationPlatformDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
Future<Position> currentLocation(Ref ref) async {
  return ref.read(locationRepositoryProvider).getCurrentPosition();
}

@Riverpod(keepAlive: true)
Future<Address> currentAddress(Ref ref) async {
  final currentPosition = await ref.watch(currentLocationProvider.future);
  return ref
      .read(locationRepositoryProvider)
      .getAddressFromCoordinates(
        lat: currentPosition.latitude,
        lon: currentPosition.longitude,
      );
}

@Riverpod(keepAlive: true)
Future<bool> locationIsServiceEnabled(Ref ref) async {
  return ref.read(locationRepositoryProvider).isLocationServiceEnabled();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> checkPermission(Ref ref) async {
  return ref.read(locationRepositoryProvider).checkPermission();
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> requestPermission(Ref ref) async {
  return ref.read(locationRepositoryProvider).requestPermission();
}

@Riverpod(keepAlive: true)
Future<void> openAppSettings(Ref ref) async {
  return ref.read(locationRepositoryProvider).openAppSettings();
}

@Riverpod(keepAlive: true)
Future<void> openLocationSettings(Ref ref) async {
  return ref.read(locationRepositoryProvider).openLocationSettings();
}
