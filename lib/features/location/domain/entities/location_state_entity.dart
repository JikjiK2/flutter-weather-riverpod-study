import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';

part 'location_state_entity.freezed.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState({
    required LocationPermissionStatus permission,
    required bool isServiceEnabled,
    @Default(false) bool isLoading,
  }) = _LocationState;
}
