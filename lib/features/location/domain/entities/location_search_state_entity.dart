import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_weather/features/location/domain/entities/address_entity.dart';

part 'location_search_state_entity.freezed.dart';

@freezed
abstract class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState({
    required String query,
    required List<Address> suggestions,
    required bool isLoading,
    String? errorMessage,
    @Default([]) List<String> searchHistory,
  }) = _LocationSearchState;
}
