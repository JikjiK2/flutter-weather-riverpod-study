import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_status_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<bool> isNetworkConnected(Ref ref) async* {
  final connectivity = Connectivity();
  final initialResult = await connectivity.checkConnectivity();
  yield !initialResult.contains(ConnectivityResult.none);

  yield* connectivity.onConnectivityChanged.map(
        (results) => !results.contains(ConnectivityResult.none),
  );
}