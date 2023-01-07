import 'package:clock/clock.dart';


String getDateAsString() {
  DateTime today = clock.now();
  var month = today.month.toString().padLeft(2, '0');
  var day = today.day.toString().padLeft(2, '0');

  return '${today.year}-${month}-${day}';
}
