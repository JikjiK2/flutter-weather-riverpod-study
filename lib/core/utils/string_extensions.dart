extension StringX on String {
  String get removeFirstWord {
    final parts = split(' ');
    if (parts.length <= 1) return this;
    return parts.skip(1).join(' ');
  }
}
