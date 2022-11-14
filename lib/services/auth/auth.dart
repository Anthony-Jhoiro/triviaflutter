import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../common/models/user/user.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() => _instance;

  AuthService._internal();

  User? _user;

  void init() {
    firebase.FirebaseAuth.instance
        .authStateChanges()
        .listen((firebase.User? user) {
      _user = user != null
          ? User(
              id: "222",
              pseudo: "Toto",
              avatar: "https://picsum.photos/200",
              score: 0,
            )
          : null;
    });
  }

  void login(String phoneNumber) {
    firebase.FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (firebase.PhoneAuthCredential credential) async {
        await firebase.FirebaseAuth.instance.signInWithCredential(credential);
      },
      verificationFailed: (firebase.FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
