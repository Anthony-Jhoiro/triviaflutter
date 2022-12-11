import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';

class AuthRepository {
  static AuthRepository? _instance;

  AuthRepository._();

  static getInstance() {
    return _instance ??= new AuthRepository._();
  }

  final AuthFirebase authFirebase = AuthFirebase.getInstance();

  Future<String> sendVerificationCode(String phoneNumber) async {
    return authFirebase.sendVerificationCode(phoneNumber);
  }

  Future<void> verifySmsCode(String verificationId, String smsCode) async {
    return authFirebase.verifyVerificationCode(verificationId, smsCode);
  }
}
