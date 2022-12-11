import 'package:flutter/material.dart';

import '../../../common/background.dart';

class SignupStepWrapper extends StatelessWidget {
  final Widget child;
  final Widget? floatingActionButton;

  const SignupStepWrapper({
    Key? key,
    required this.child,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [child],
            ),
          ),
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
