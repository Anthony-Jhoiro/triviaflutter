import 'package:clock/clock.dart';

String formatDateInIsoFormat(DateTime dateTime) {
  var month = dateTime.month.toString().padLeft(2, '0');
  var day = dateTime.day.toString().padLeft(2, '0');

  return '${dateTime.year}-${month}-${day}';
}

String getDateAsString() {
  DateTime today = clock.now();

  return formatDateInIsoFormat(today);
}

DateTime parseDateFromIsoFormat(String dateAsString) {
  return DateTime.parse(dateAsString);
}

bool dateIsToday(DateTime maybeToday) {
  final now = clock.now();

  return now.day == maybeToday.day &&
      now.month == maybeToday.month &&
      now.year == maybeToday.year;
}
