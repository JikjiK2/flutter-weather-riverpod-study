import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/core/domain/entities/app_exception.dart';

part 'global_error_provider.g.dart';

@riverpod
class GlobalError extends _$GlobalError {
  @override
  AppException? build() => null;

  void showError(AppException exception) {
    state = exception;
  }

  void clear() {
    state = null;
  }
}
