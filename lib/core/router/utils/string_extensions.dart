extension StringX on String {
  /// 첫 번째 단어를 제거하고 나머지 문자열을 반환합니다.
  String get removeFirstWord {
    final parts = split(' ');
    if (parts.length <= 1) return this;
    return parts.skip(1).join(' ');
  }
}
