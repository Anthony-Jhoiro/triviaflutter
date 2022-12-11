import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_step_wrapper.dart';

class SignupLoadingScreen extends StatelessWidget {
  final String message;

  const SignupLoadingScreen({Key? key, required this.message})
      : super(key: key);

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
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text(
                this.message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
