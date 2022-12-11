import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget? child;

  const CustomBackground({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/bg-tile.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
