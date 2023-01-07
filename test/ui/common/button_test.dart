import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triviaflutter/ui/common/button.dart';

void main() {
  testWidgets("Button", (tester) async {

    final buttonText = "This is a button";
    var hasBeenPressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Button(
          onPressed: () {
            hasBeenPressed = true;
          },
          text: buttonText,
        ),
      ),
    );

    final button = find.text(buttonText);

    await tester.tap(button);

    expect(hasBeenPressed, true);
  });


}
