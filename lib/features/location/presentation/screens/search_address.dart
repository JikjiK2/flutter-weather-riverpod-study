import 'dart:async';

import 'package:ai_weather/features/location/domain/models/location_search_state_model.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/weather_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class AddressSearchScreen extends ConsumerStatefulWidget {
  const AddressSearchScreen({super.key});

  @override
  ConsumerState<AddressSearchScreen> createState() =>
      _AddressSearchScreenState();
}

class _AddressSearchScreenState extends ConsumerState<AddressSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  Timer? _debounce;
  bool _hasInputFocus = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _searchFocusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _searchFocusNode.removeListener(_onFocusChanged);
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (!_searchFocusNode.hasFocus && _searchController.text.isEmpty) {
      ref.read(locationSearchProvider.notifier).clearSuggestions();
    }
    setState(() {
      _hasInputFocus = _searchFocusNode.hasFocus;
    });
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (_searchController.text.isEmpty) {
        ref.read(locationSearchProvider.notifier).clearSuggestions();
      } else {
        ref
            .read(locationSearchProvider.notifier)
            .searchAddresses(_searchController.text);
      }
    });
  }

  void _onSearchSubmitted(String value) {
    if (value.isNotEmpty) {
      _debounce?.cancel();
      ref.read(locationSearchProvider.notifier).searchAddresses(value);
      ref.read(locationSearchProvider.notifier).addSearchTerm(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final locationSearchState = ref.watch(locationSearchProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('주소 검색')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              focusNode: _searchFocusNode,
              decoration: InputDecoration(
                hintText: '검색할 주소를 입력하세요',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
              ),
              onSubmitted: _onSearchSubmitted,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: locationSearchState.isLoading
                  ? const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 10),
                          Text(
                            '주소 검색 중...',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  : locationSearchState.errorMessage != null
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '검색에 실패했습니다: ${locationSearchState.errorMessage}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.redAccent,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton.icon(
                              onPressed: () {
                                ref
                                    .read(locationSearchProvider.notifier)
                                    .searchAddresses(locationSearchState.query);
                              },
                              icon: const Icon(Icons.refresh),
                              label: const Text('다시 시도'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Theme.of(
                                  context,
                                ).colorScheme.onPrimary,
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.primary,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : (_searchController.text.isEmpty)
                  ? _buildSearchHistory(locationSearchState)
                  : locationSearchState.suggestions.isEmpty &&
                        locationSearchState.query.isNotEmpty
                  ? Center(
                      child: Text(
                        '\'${locationSearchState.query}\'에 대한 검색 결과가 없습니다.',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.builder(
                      itemCount: locationSearchState.suggestions.length,
                      itemBuilder: (context, index) {
                        final address = locationSearchState.suggestions[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            title: Text(
                              address.formattedAddress ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(
                              'Lat: ${address.latitude}, Lng: ${address.longitude}',
                            ),
                            leading: Icon(
                              Icons.location_on,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            onTap: () {
                              if (address.latitude != null &&
                                  address.longitude != null) {
                                final newPosition = Position(
                                  latitude: address.latitude!,
                                  longitude: address.longitude!,
                                  timestamp: DateTime.now(),
                                  accuracy: 0.0,
                                  altitude: 0.0,
                                  altitudeAccuracy: 0.0,
                                  heading: 0.0,
                                  headingAccuracy: 0.0,
                                  speed: 0.0,
                                  speedAccuracy: 0.0,
                                );

                                ref
                                    .read(
                                      selectedWeatherLocationProvider.notifier,
                                    )
                                    .updateLocation(newPosition);

                                ref
                                    .read(locationSearchProvider.notifier)
                                    .addSearchTerm(
                                      address.formattedAddress ?? '',
                                    );

                                context.pop(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      '위치 정보가 유효하지 않아 날씨를 표시할 수 없습니다.',
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchHistory(LocationSearchState locationSearchState) {
    if (locationSearchState.searchHistory.isEmpty) {
      return Center(
        child: Text(
          '주소를 입력해 주세요.',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('최근 검색어', style: Theme.of(context).textTheme.titleMedium),
              TextButton(
                onPressed: () {
                  ref
                      .read(locationSearchProvider.notifier)
                      .clearSearchHistory();
                },
                child: const Text('전체 삭제'),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: locationSearchState.searchHistory.length,
            itemBuilder: (context, index) {
              final term = locationSearchState.searchHistory[index];
              return ListTile(
                leading: const Icon(Icons.history),
                title: Text(term),
                onTap: () {
                  _searchController.text = term;
                  _onSearchSubmitted(term);
                },
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    ref
                        .read(locationSearchProvider.notifier)
                        .removeSearchTerm(term);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
