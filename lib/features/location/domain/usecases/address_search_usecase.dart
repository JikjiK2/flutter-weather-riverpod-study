import 'package:ai_weather/features/location/domain/entities/address_entity.dart';
import 'package:ai_weather/features/location/domain/repositories/location_repository.dart';

class SearchAddressUseCase {
  final LocationRepository _repository;

  SearchAddressUseCase(this._repository);

  Future<List<Address>> execute({required String query}) async {
    final rawResult = await _repository.searchAddress(query: query);

    return rawResult.values.expand((list) => list).toList();
  }
}
