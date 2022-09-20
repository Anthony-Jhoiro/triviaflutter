import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final IconData? icon;

  const Button({Key? key, required this.onPressed, required this.text, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16, horizontal: 20))
        ),
          icon: Icon(
              icon,
            size: 18,
          ),
          onPressed: onPressed,
          label: Text(text));
    } else {
      return ElevatedButton(
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16, horizontal: 20))
          ),
          onPressed: onPressed,
          child: Text(text));
    }

  }
}
