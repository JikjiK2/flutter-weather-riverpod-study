import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';
import 'package:ai_weather/features/weather/presentation/providers/location_state_providers.dart';

class AddressSearchScreen extends ConsumerStatefulWidget {
  const AddressSearchScreen({super.key});

  @override
  ConsumerState<AddressSearchScreen> createState() => _AddressSearchScreenState();
}

class _AddressSearchScreenState extends ConsumerState<AddressSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      ref.read(addressSearchProvider.notifier).search(query);
    });
  }

  void _onSearchSubmitted(String value) {
    if (value.isNotEmpty) {
      _debounce?.cancel();
      ref.read(addressSearchProvider.notifier).search(value);
      ref.read(locationSearchHistoryProvider.notifier).addTerm(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchResultAsync = ref.watch(addressSearchProvider);
    final searchHistoryAsync = ref.watch(locationSearchHistoryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('주소 검색')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: '검색할 주소를 입력하세요',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _searchController.clear();
                      ref.read(addressSearchProvider.notifier).clear();
                    })
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              ),
              onChanged: _onSearchChanged,
              onSubmitted: _onSearchSubmitted,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _searchController.text.isEmpty
                  ? _buildHistoryView(searchHistoryAsync)
                  : searchResultAsync.when(
                data: (suggestions) => _buildSearchResults(suggestions),
                loading: () => const _LoadingView(),
                error: (err, stack) => _ErrorView(
                  message: err.toString(),
                  onRetry: () => ref.read(addressSearchProvider.notifier).search(_searchController.text),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryView(AsyncValue<List<String>> historyAsync) {
    return historyAsync.when(
      data: (history) => history.isEmpty
          ? const Center(child: Text('최근 검색 기록이 없습니다.'))
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('최근 검색어', style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () => ref.read(locationSearchHistoryProvider.notifier).clearHistory(),
                child: const Text('전체 삭제'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                final term = history[index];
                return ListTile(
                  leading: const Icon(Icons.history),
                  title: Text(term),
                  onTap: () {
                    _searchController.text = term;
                    _onSearchSubmitted(term);
                  },
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => ref.read(locationSearchHistoryProvider.notifier).removeTerm(term),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      loading: () => const SizedBox.shrink(),
      error: (e, s) => const SizedBox.shrink(),
    );
  }

  Widget _buildSearchResults(List<dynamic> suggestions) {
    if (suggestions.isEmpty) {
      return const Center(child: Text('검색 결과가 없습니다.'));
    }
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final address = suggestions[index];
        return ListTile(
          leading: const Icon(Icons.location_on, color: Colors.blue),
          title: Text(address.formattedAddress ?? ''),
          onTap: () {
            final position = Position(
              latitude: address.latitude!,
              longitude: address.longitude!,
              timestamp: DateTime.now(),
              accuracy: 0, altitude: 0, altitudeAccuracy: 0, heading: 0, headingAccuracy: 0, speed: 0, speedAccuracy: 0,
            );
            ref.read(selectedWeatherLocationProvider.notifier).updateLocation(position);
            ref.read(locationSearchHistoryProvider.notifier).addTerm(address.formattedAddress ?? '');
            context.pop();
          },
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();
  @override
  Widget build(BuildContext context) => const Center(child: CircularProgressIndicator());
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorView({required this.message, required this.onRetry});
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.error_outline, color: Colors.red, size: 48),
      Text(message, textAlign: TextAlign.center),
      ElevatedButton(onPressed: onRetry, child: const Text('다시 시도')),
    ],
  );
}