import 'package:ai_weather/features/location/data/repositories/location_repository.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';

class RequestLocationPermissionUsecase {
  final LocationRepository _repository;
  RequestLocationPermissionUsecase(this._repository);

  Future<LocationPermissionStatus> call() {
    return _repository.requestPermission();
  }
}
