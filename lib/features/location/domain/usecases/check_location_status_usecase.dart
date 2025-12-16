import 'package:ai_weather/features/location/data/repositories/location_repository.dart';
import 'package:ai_weather/features/location/domain/models/location_state_model.dart';

class CheckLocationStatusUsecase {
  final LocationRepository _repository;
  CheckLocationStatusUsecase(this._repository);

  Future<LocationStateModel> call() async {
    final permission = await _repository.checkPermission();
    final isServiceEnabled = await _repository.isLocationServiceEnabled();
    return LocationStateModel(
      permission: permission,
      isServiceEnabled: isServiceEnabled,
    );
  }
}
