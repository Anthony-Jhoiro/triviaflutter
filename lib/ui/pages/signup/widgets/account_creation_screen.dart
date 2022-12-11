import 'package:flutter/material.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_step_wrapper.dart';

import '../bloc/signup_cubit.dart';

class AccountCreationScreen extends StatefulWidget {
  final SignupCubit signupCubit;

  const AccountCreationScreen({Key? key, required this.signupCubit})
      : super(key: key);

  @override
  State<AccountCreationScreen> createState() => _AccountCreationScreenState();
}

class _AccountCreationScreenState extends State<AccountCreationScreen> {
  final TextEditingController pseudoController = TextEditingController();

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
              Text(
                "Création d'un nouveau compte",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: pseudoController,
                decoration: InputDecoration(
                  labelText: "Nom d'utilisateur",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.signupCubit.createAccount(pseudoController.text);
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
