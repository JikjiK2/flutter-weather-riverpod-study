import 'package:logger/logger.dart';

final appLogger = Logger(
  printer: PrettyPrinter(
    methodCount: 2, // 표시할 호출 메서드 스택 수
    errorMethodCount: 8, // 에러 발생 시 표시할 호출 메서드 스택 수
    lineLength: 120, // 출력될 라인 길이
    colors: true, // 콘솔 색상 활성화
    printEmojis: true, // 이모지 출력 활성화
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);
