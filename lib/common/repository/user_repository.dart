import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';
import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';

import '../models/user/user.dart';

class UserRepository {
  static UserRepository? _instance;

  UserRepository._();

  static UserRepository getInstance() {
    return _instance ??= new UserRepository._();
  }

  final UserFirestore _userFirestore = UserFirestore.getInstance();
  final AuthFirebase _authFirebase = AuthFirebase.getInstance();

  User? _currentUser;

  User get currentUser {
    return _currentUser!;
  }

  Future<User?> findUserById(String userId) async {
    return _userFirestore.findUserById(userId);
  }

  Future<void> createUser(String userId, User user) async {
    return _userFirestore.createUser(userId, user);
  }

  Future<User?> getCurrentUser() async {
    if (_currentUser != null) {
      return _currentUser;
    }
    final userId = _authFirebase.getCurrentUserId();
    if (userId == null) {
      return null;
    }

    final appUser = await findUserById(userId);
    if (appUser != null) {
      this._currentUser = appUser;
    }

    return appUser;
  }

  Future<void> logout() async {
    await _authFirebase.logout();
    this._currentUser = null;
  }

  Future<List<User>> listUsers() {
    return _userFirestore.listUsers();
  }
}
