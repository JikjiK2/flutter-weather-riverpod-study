class KmaDateTime {
  @pragma('vm:prefer-inline')
  static Map<String, String> getUltraSrtFcstBaseDateTime(DateTime now) {
    DateTime baseDateTime = now;

    // 현재 분이 45분 이전이면, 직전 시각의 30분 발표를 기준으로 한다.
    if (now.minute < 45) {
      baseDateTime = now.subtract(const Duration(hours: 1));
    }

    // 발표 시각은 항상 30분 단위 (xx30)
    final baseDate =
        '${baseDateTime.year}${baseDateTime.month.toString().padLeft(2, '0')}${baseDateTime.day.toString().padLeft(2, '0')}';
    final baseTime =
        '${baseDateTime.hour.toString().padLeft(2, '0')}30'; // 매시 30분

    return {'baseDate': baseDate, 'baseTime': baseTime};
  }
}
