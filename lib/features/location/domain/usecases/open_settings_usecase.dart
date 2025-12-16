import 'package:ai_weather/features/location/data/repositories/location_repository.dart';

class OpenSettingsUsecase {
  final LocationRepository _repository;
  OpenSettingsUsecase(this._repository);

  Future<void> openAppSettings() {
    return _repository.openAppSettings();
  }

  Future<void> openLocationSettings() {
    return _repository.openLocationSettings();
  }
}
