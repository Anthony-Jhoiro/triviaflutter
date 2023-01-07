
import 'package:flutter_test/flutter_test.dart';
import 'package:clock/clock.dart';
import 'package:triviaflutter/core/tools/date_utils.dart';

void main() {

  test('Counter value should be incremented', () {
    String a = "";
    withClock(
      Clock.fixed(DateTime(2022, 1, 3)),
          () {
        a = getDateAsString();
      },
    );
    expect(a, "2022-01-03");
  });
}