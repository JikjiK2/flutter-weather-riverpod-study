import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/features/location/domain/enums/location_permission_enums.dart';
import 'package:ai_weather/features/location/presentation/providers/location_providers.dart';

class LocationScreen extends ConsumerWidget {
  const LocationScreen({super.key});

  String _permissionText(LocationPermissionStatus permission) {
    switch (permission) {
      case LocationPermissionStatus.denied:
        return '거부됨';
      case LocationPermissionStatus.deniedForever:
        return '영구 거부됨 (설정 필요)';
      case LocationPermissionStatus.granted:
        return '허용됨';
      case LocationPermissionStatus.unknown:
        return '알 수 없음';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('위치 기능 테스트')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildLocationServiceCard(context, ref),
          const SizedBox(height: 16),
          _buildPermissionCard(context, ref),
          const SizedBox(height: 16),
          _buildGetCurrentLocationCard(context, ref),
        ],
      ),
    );
  }

  Widget _buildLocationServiceCard(BuildContext context, WidgetRef ref) {
    final serviceStatusAsync = ref.watch(locationIsServiceEnabledProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. 위치 서비스 (GPS)',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            serviceStatusAsync.when(
              data: (isEnabled) => Text(
                '상태: ${isEnabled ? '활성화' : '비활성화'}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: isEnabled ? Colors.green : Colors.red,
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Text('오류: $err'),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      ref.refresh(locationIsServiceEnabledProvider),
                  child: const Text('상태 새로고침'),
                ),
                ElevatedButton(
                  onPressed: () => ref.read(openLocationSettingsProvider),
                  child: const Text('위치 설정 열기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionCard(BuildContext context, WidgetRef ref) {
    final permissionStatusAsync = ref.watch(checkPermissionProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2. 위치 권한', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            permissionStatusAsync.when(
              data: (status) => Text(
                '상태: ${_permissionText(status)}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Text('오류: $err'),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => ref.refresh(checkPermissionProvider),
                  child: const Text('권한 확인'),
                ),
                ElevatedButton(
                  onPressed: () => ref.read(requestPermissionProvider),
                  child: const Text('권한 요청'),
                ),
                ElevatedButton(
                  onPressed: () => ref.read(openAppSettingsProvider),
                  child: const Text('앱 설정 열기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGetCurrentLocationCard(BuildContext context, WidgetRef ref) {
    final addressAsync = ref.watch(currentAddressProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3. 현재 위치 주소',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            addressAsync.when(
              data: (address) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '현재 주소: ${address.administrativeArea ?? ''} ${address.locality ?? ''} ${address.subLocality ?? ''}',
                  ),
                  Text('(포맷팅된 주소: ${address.formattedAddress})'),
                ],
              ),
              loading: () => const Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16),
                  Text('현재 위치를 가져오는 중...'),
                ],
              ),
              error: (err, stack) => Text('위치 가져오기 오류: $err'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.refresh(currentLocationProvider),
              child: const Text('현재 위치/주소 새로고침'),
            ),
          ],
        ),
      ),
    );
  }
}
