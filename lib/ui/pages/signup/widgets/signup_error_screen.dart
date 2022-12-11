import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_step_wrapper.dart';

import '../../../common/button.dart';

class SignupErrorScreen extends StatelessWidget {
  final String message;
  final Function onGoBack;

  const SignupErrorScreen({
    Key? key,
    required this.message,
    required this.onGoBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignupStepWrapper(
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 50,
                color: Theme.of(context).errorColor,
              ),
              SizedBox(height: 20),
              Text(
                this.message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Button(
                text: "Réessayer",
                onPressed: () => onGoBack(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
