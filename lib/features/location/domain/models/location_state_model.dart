import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';

part 'location_state_model.freezed.dart';

@freezed
abstract class LocationStateModel with _$LocationStateModel {
  const factory LocationStateModel({
    required LocationPermissionStatus permission,
    required bool isServiceEnabled,
    @Default(false) bool isLoading,
  }) = _LocationStateModel;
}
