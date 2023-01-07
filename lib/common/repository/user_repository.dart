import 'dart:async';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';
import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';

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

  Future<void> logout() async {
    await _authFirebase.logout();
    this._currentUser = null;
  }

  Future<void> _updateCurrentUser(User user) async {
    await _userFirestore.updateUser(user);
    _userStreamController.add(user);
  }

  Future<void> increaseScore(int amount) async {
    final newUser = _currentUser!.copyWith(
      score: _currentUser!.score + amount,
    );
    await _updateCurrentUser(newUser);
  }

  Future<void> setAvatarImage(File avatarFile) async {
    final storageRef = FirebaseStorage.instance.ref();

    final picture = storageRef.child('profilePictures/${_currentUser!.id}.jpg');

    await picture.putFile(avatarFile);

    final downloadUrl = await picture.getDownloadURL();

    final newUser = _currentUser!.copyWith(
      avatar: downloadUrl,
    );
    await _updateCurrentUser(newUser);
  }
}
