import 'dart:async';

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
}
