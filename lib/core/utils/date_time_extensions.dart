import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  DateTime get normalized => DateTime(year, month, day);

  String get toKmaDate => DateFormat('yyyyMMdd').format(this);

  String get toKmaTime => DateFormat('HH00').format(this);

  DateTime getMaxValidDateForShortTerm(String baseTime) {
    final hour = int.parse(baseTime.substring(0, 2));
    final addedDays = hour >= 17 ? 5 : 4;
    return normalized.add(Duration(days: addedDays));
  }

  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}