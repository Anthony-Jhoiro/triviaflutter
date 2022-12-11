import 'package:triviaflutter/common/datasources/remote/UserFirestore.dart';

import '../models/user/user.dart';

class UserRepository {
  static UserRepository? _instance;

  UserRepository._();

  static getInstance() {
    return _instance ??= new UserRepository._();
  }

  final UserFirestore userFirestore = UserFirestore.getInstance();

  Future<User?> findUserById(String userId) async {
    return userFirestore.findUserById(userId);
  }

  Future<void> createUser(String userId, User user) async {
    return userFirestore.createUser(userId, user);
  }
}
