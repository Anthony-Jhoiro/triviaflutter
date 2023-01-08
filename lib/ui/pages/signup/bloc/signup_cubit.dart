import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triviaflutter/common/models/user.dart' as triviauser;
import 'package:triviaflutter/common/repository/auth_repository.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

part 'signup_cubit.freezed.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final CurrentUserRepository currentUserRepository;
  late String verificationId;
  late String phoneNumber;

  SignupCubit({
    required this.authRepository,
    required this.userRepository,
    required this.currentUserRepository,
  }) : super(SignupState.initial());

  redirectIfLoggedIn(BuildContext context) async {
    var currentUser = await userRepository.getCurrentUser();
    if (currentUser != null) {
      emit(SignupState.loggedIn());
    } else {
      emit(SignupState.phoneNumberForm());
    }
  }

  validatePhoneNumber(String phoneNumber) async {
    emit(SignupState.phoneNumberSubmitted());
    this.phoneNumber = phoneNumber;

    try {
      this.verificationId =
          await authRepository.sendVerificationCode(phoneNumber);
      emit(SignupState.phoneNumberVerificationCodeSent(verificationId));
    } on FirebaseAuthException {
      emit(SignupState.phoneNumberSubmitionError(
        "Envoie du code de vérification impossible, veuillez réessayer ultérieurement.",
      ));
    }
  }

  resendVerificationCode() async {
    validatePhoneNumber(phoneNumber);
  }

  fetchAccount(String smsCode) async {
    emit(SignupState.accountFetching());
    try {
      await authRepository.verifySmsCode(verificationId, smsCode);
      final user = await userRepository.getCurrentUser();
      if (user == null) {
        emit(SignupState.accountCreation());
      } else {
        emit(SignupState.loggedIn());
      }
    } catch (err) {
      emit(SignupState.accountFetchingError(
        "Impossible de récupérer le compte, merci de réessayer ultérieurement.",
      ));
    }
  }

  createAccount(BuildContext context, String username) async {
    emit(SignupState.accountCreating());

    final uid = authRepository.getCurrentUserId()!;
    try {
      await userRepository.createUser(
        triviauser.User(
          id: uid,
          pseudo: username,
          avatar: "",
          score: 0,
        ),
      );
      emit(SignupState.loggedIn());
    } catch (err) {
      emit(SignupState.accountCreationError(
        "Creation du compte impossible, merci de réessayer ultérieurement.",
      ));
    }
  }

  returnToPhoneNumberForm() {
    emit(SignupState.phoneNumberForm());
  }

  returnToAccountForm() {
    emit(SignupState.accountCreation());
  }
}
