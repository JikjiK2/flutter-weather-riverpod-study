import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ai_weather/core/logger/app_logger.dart';
import 'package:ai_weather/core/logger/app_logger_interface.dart';

part 'app_logger_impl.g.dart';

class AppLoggerImpl implements IAppLogger {
  @override
  void i(String message) => appLogger.i(message);

  @override
  void w(String message) => appLogger.w(message);

  @override
  void e(String message, {Object? error, StackTrace? stackTrace}) {
    appLogger.e(message, error: error, stackTrace: stackTrace);
  }
}

@Riverpod(keepAlive: true)
IAppLogger logger(Ref ref) => AppLoggerImpl();
