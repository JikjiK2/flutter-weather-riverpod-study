import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_search_state_model.freezed.dart';

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
