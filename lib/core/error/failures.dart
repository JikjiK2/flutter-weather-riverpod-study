sealed class Failure {
  final String message;

  Failure(this.message);
}

class NetworkFailure extends Failure {
  NetworkFailure([super.message = '네트워크 연결이 원활하지 않습니다.']);
}

class ServerFailure extends Failure {
  ServerFailure([super.message = '서버 응답에 문제가 발생했습니다.']);
}

class LocationFailure extends Failure {
  LocationFailure([super.message = '위치 정보를 가져올 수 없습니다. 권한을 확인해주세요.']);
}

class EmptyDataFailure extends Failure {
  EmptyDataFailure([super.message = '표시할 날씨 정보가 없습니다.']);
}
