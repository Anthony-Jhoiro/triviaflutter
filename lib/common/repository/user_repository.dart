import 'dart:async';

import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';
import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';

import '../models/user.dart';

class UserRepository {
  // Singleton
  static UserRepository? _instance;

  UserRepository._();

  static UserRepository getInstance() {
    return _instance ??= UserRepository._();
  }

  // Dependencies

  final UserFirestore _userFirestore = UserFirestore.getInstance();
  final AuthFirebase _authFirebase = AuthFirebase.getInstance();

  // Attributes

  User? _currentUser;

  User get currentUser => _currentUser!;

  StreamController<User> _userStreamController = StreamController<User>();
  late Stream<User> _userStream = _userStreamController.stream;

  Stream<User> get userStream => _userStream;

  // User Crud

  Future<User?> findUserById(String userId) async {
    return _userFirestore.findUserById(userId);
  }

  Future<void> createUser(User user) async {
    return _userFirestore.createUser(user);
  }

  Future<List<User>> listUsers() {
    return _userFirestore.listUsers();
  }

  // Current User

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
}
