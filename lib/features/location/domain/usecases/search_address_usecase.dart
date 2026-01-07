import 'package:ai_weather/features/location/domain/models/address_model.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';

class SearchAddressUseCase {
  final LocationRepository _repository;

  SearchAddressUseCase(this._repository);

  Future<Map<String, List<Address>>> execute({required String query}) async {
    return await _repository.searchAddress(query: query);
  }
}
