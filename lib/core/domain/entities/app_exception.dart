import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
abstract class AppException with _$AppException implements Exception {
  const factory AppException.network([String? message]) = NetworkException;
  const factory AppException.server([String? message]) = ServerException;
  const factory AppException.location([String? message]) = LocationException;
  const factory AppException.unauthorized([String? message]) = UnauthorizedException;
  const factory AppException.emptyData([String? message]) = EmptyDataException;
  const factory AppException.unknown([String? message]) = UnknownException;

  const AppException._();

  String get readableMessage => when(
    network: (msg) => msg ?? '네트워크 연결이 원활하지 않습니다.',
    server: (msg) => msg ?? '서버 응답에 문제가 발생했습니다.',
    location: (msg) => msg ?? '위치 정보를 가져올 수 없습니다.',
    unauthorized: (msg) => msg ?? '인증 정보가 올바르지 않거나 만료되었습니다.',
    emptyData: (msg) => msg ?? '데이터가 존재하지 않습니다.',
    unknown: (msg) => msg ?? '알 수 없는 오류가 발생했습니다.',
  );
}
