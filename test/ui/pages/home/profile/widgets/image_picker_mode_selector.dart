import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:triviaflutter/ui/pages/home/profile/widgets/image_picker_mode_selector.dart';

void main() {
  testWidgets("ImagePickerModeSelector", (tester) async {
    ImageSource? choice;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ImagePickerModeSelector(
            onPress: (selected) {
              choice = selected;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byIcon(Icons.camera));

    expect(choice, ImageSource.camera);

    await tester.tap(find.byIcon(Icons.image));

    expect(choice, ImageSource.gallery);
  });
}
