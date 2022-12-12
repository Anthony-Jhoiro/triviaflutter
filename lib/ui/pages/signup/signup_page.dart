import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:triviaflutter/common/repository/auth_repository.dart';
import 'package:triviaflutter/ui/pages/signup/bloc/signup_cubit.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/account_creation_screen.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/phonenumber_form_screen.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/phonenumber_validation_screen.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_error_screen.dart';
import 'package:triviaflutter/ui/pages/signup/widgets/signup_loading_screen.dart';

import '../../../common/repository/user_repository.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SignupCubit? signupCubit;

  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'FRA');
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository.getInstance(),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository.getInstance(),
        ),
      ],
      child: BlocProvider<SignupCubit>(
        create: (context) {
          signupCubit = SignupCubit(
            authRepository: RepositoryProvider.of<AuthRepository>(context),
            userRepository: RepositoryProvider.of<UserRepository>(context),
          );

          return signupCubit!..redirectIfLoggedIn(context);
        },
        child: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {},
          builder: (context, state) {
            // Loading states
            if (state is Initial) {
              return SignupLoadingScreen(
                message: "Récupération de vos informations...",
              );
            }
            if (state is PhoneNumberSubmitted) {
              return SignupLoadingScreen(
                message: "Envoie du SMS de validation...",
              );
            }
            if (state is AccountFetching) {
              return SignupLoadingScreen(
                message:
                    "Récupération des informations liées à votre compte...",
              );
            }
            if (state is AccountCreating) {
              return SignupLoadingScreen(
                message: "Création de votre compte...",
              );
            }

            // Error States
            if (state is PhoneNumberSubmitionError) {
              return SignupErrorScreen(
                message: state.message,
                onGoBack: signupCubit!.resendVerificationCode,
              );
            }
            if (state is AccountFetchingError) {
              return SignupErrorScreen(
                message: state.message,
                onGoBack: signupCubit!.returnToPhoneNumberForm,
              );
            }
            if (state is AccountFetchingError) {
              return SignupErrorScreen(
                message: state.message,
                onGoBack: signupCubit!.returnToAccountForm,
              );
            }

            // User interraction states
            if (state is PhoneNumberForm) {
              return PhoneNumberFormScreen(signupCubit: signupCubit!);
            }
            if (state is PhoneNumberVerificationCodeSent) {
              return PhoneNumberValidationScreen(signupCubit: signupCubit!);
            }
            if (state is AccountCreation) {
              return AccountCreationScreen(signupCubit: signupCubit!);
            }

            return SignupLoadingScreen(
              message: "Chargement...",
            );
          },
        ),
      ),
    );
  }
}
