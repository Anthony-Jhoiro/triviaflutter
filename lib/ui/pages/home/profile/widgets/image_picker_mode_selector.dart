import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerModeSelector extends StatelessWidget {
  final Function(ImageSource imageSource) onPress;

  const ImagePickerModeSelector({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  onPress(ImageSource.camera);
                },
                tooltip: 'Depuis la Caméra',
                icon: Icon(Icons.camera),
              ),
              Text('Depuis la Caméra'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  onPress(ImageSource.gallery);
                },
                tooltip: 'Depuis la Gallerie',
                icon: Icon(Icons.image),
              ),
              Text('Depuis la Gallerie'),
            ],
          ),
        ],
      ),
    );
  }
}
