import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_step_wrapper.dart';

import '../bloc/signup_cubit.dart';

class PhoneNumberFormScreen extends StatefulWidget {
  final SignupCubit signupCubit;

  const PhoneNumberFormScreen({Key? key, required this.signupCubit})
      : super(key: key);

  @override
  State<PhoneNumberFormScreen> createState() => _PhoneNumberFormScreenState();
}

class _PhoneNumberFormScreenState extends State<PhoneNumberFormScreen> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'FRA');
  final TextEditingController controller = TextEditingController();

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
                "Pour commencer, créez un compte!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Saisissez votre numéro de téléphone.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              InternationalPhoneNumberInput(
                onInputChanged: (phoneNumber) {
                  setState(() {
                    this.phoneNumber = phoneNumber;
                  });
                },
                initialValue: phoneNumber,
                autoFocus: true,
                selectorConfig: SelectorConfig(
                  countryComparator: (countryA, countryB) {
                    if (countryA.dialCode == null ||
                        countryB.dialCode == null) {
                      return 0;
                    }
                    var numA = int.parse(countryA.dialCode!);
                    var numB = int.parse(countryB.dialCode!);

                    return numA - numB;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: (phoneNumber.phoneNumber?.length ?? 0) >= 7
          ? FloatingActionButton(
              onPressed: () {
                widget.signupCubit
                    .validatePhoneNumber(phoneNumber.phoneNumber!);
              },
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(Icons.chevron_right),
            )
          : null,
    );
  }
}
