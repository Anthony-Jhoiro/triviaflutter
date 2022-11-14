

String getDateAsString() {
  DateTime today = DateTime.now();

  return '${today.year}-${today.month}-${today.day}';
}