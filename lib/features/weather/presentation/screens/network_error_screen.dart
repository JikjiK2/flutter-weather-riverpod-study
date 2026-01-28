import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_weather/core/network/network_status_provider.dart';

class NetworkErrorView extends ConsumerStatefulWidget {
  final String message;
  final VoidCallback onRetry;

  const NetworkErrorView({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  ConsumerState<NetworkErrorView> createState() => _NetworkErrorViewState();
}

class _NetworkErrorViewState extends ConsumerState<NetworkErrorView> {
  bool _isRetrying = false;

  @override
  Widget build(BuildContext context) {
    // 실시간 연결 감지 시 자동 재시도
    ref.listen(isNetworkConnectedProvider, (previous, next) {
      if (next.hasValue && next.value == true) {
        Future.microtask(() => widget.onRetry());
      }
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 아이콘 영역
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi_off_rounded,
                size: 80,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 32),

            Text(
              '네트워크 연결 확인',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            Text(
              widget.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 48),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isRetrying ? null : () async {
                  setState(() => _isRetrying = true);
                  widget.onRetry();
                  await Future.delayed(const Duration(seconds: 1));
                  if (mounted) setState(() => _isRetrying = false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.blueAccent.withValues(alpha: 0.6),
                  fixedSize: const Size.fromHeight(58),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: _isRetrying
                    ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: Colors.white,
                  ),
                )
                    : const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh_rounded),
                    SizedBox(width: 8),
                    Text(
                      '다시 시도하기',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  AppSettings.openAppSettings(type: AppSettingsType.wireless);
                },
                icon: const Icon(Icons.settings_outlined),
                label: const Text(
                  '네트워크 설정으로 이동',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  fixedSize: const Size.fromHeight(58),
                  side: BorderSide(color: Colors.grey.shade300),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info_outline_rounded, size: 16, color: Colors.grey[400]),
                const SizedBox(width: 8),
                Text(
                  'Wi-Fi 또는 모바일 데이터 상태를 확인해주세요.',
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}