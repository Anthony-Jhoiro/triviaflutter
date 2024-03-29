import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

class AuthRepository {
  static AuthRepository? _instance;

  AuthRepository._();

  static getInstance() {
    return _instance ??= AuthRepository._();
  }

  final AuthFirebase authFirebase = AuthFirebase.getInstance();
  final UserRepository userRepository = UserRepository.getInstance();

  Future<String> sendVerificationCode(String phoneNumber) async {
    return authFirebase.sendVerificationCode(phoneNumber);
  }

  Future<void> verifySmsCode(String verificationId, String smsCode) async {
    return authFirebase.verifyVerificationCode(verificationId, smsCode);
  }

  String? getCurrentUserId() {
    return authFirebase.getCurrentUserId();
  }
}
