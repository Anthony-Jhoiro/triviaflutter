import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static AuthFirebase? _instance;

  AuthFirebase._();

  static getInstance() {
    return _instance ??= new AuthFirebase._();
  }

  Future<String> sendVerificationCode(String phoneNumber) async  {
    final completer = Completer<String>();

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Skipped because automatic code validation is disabled
        return;
      },
      verificationFailed: (FirebaseAuthException e) {
        completer.completeError(e);
      },
      codeSent: (String verificationId, int? _resendToken) {
        completer.complete(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Skipped because automatic code validation is disabled
        return;
      },
        timeout: const Duration(), // This disable automatic code validation
    );

    return completer.future;
  }

  Future<void> verifyVerificationCode(String verificationId, String smsCode) async  {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  String? getCurrentUserId() {
    return FirebaseAuth.instance.currentUser?.uid;
  }
}