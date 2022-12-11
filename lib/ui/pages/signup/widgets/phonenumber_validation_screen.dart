import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/common/button.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_step_wrapper.dart';

import '../bloc/signup_cubit.dart';

class PhoneNumberValidationScreen extends StatefulWidget {
  final SignupCubit signupCubit;

  const PhoneNumberValidationScreen({Key? key, required this.signupCubit})
      : super(key: key);

  @override
  State<PhoneNumberValidationScreen> createState() =>
      _PhoneNumberValidationScreenState();
}

class _PhoneNumberValidationScreenState
    extends State<PhoneNumberValidationScreen> {
  final TextEditingController controller = TextEditingController();
  bool formIsValid = false;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        formIsValid = controller.text.length == 6;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignupStepWrapper(
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Merci d'entrer le code de validation reçu par SMS."),
              TextField(
                controller: controller,
              ),
              Button(
                onPressed: () {
                  widget.signupCubit.resendVerificationCode();
                },
                text: "Renvoyer le code",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: formIsValid
          ? FloatingActionButton(
              onPressed: () {
                widget.signupCubit.fetchAccount(controller.text);
              },
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(Icons.check),
            )
          : null,
    );
  }
}
