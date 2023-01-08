import 'dart:async';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';
import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';
import 'package:triviaflutter/common/models/user.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

class CurrentUserRepository {
// Singleton
  static CurrentUserRepository? _instance;

  static CurrentUserRepository getInstance() {
    return _instance ??= CurrentUserRepository._();
  }

  // Dependencies

  late UserFirestore _userFirestore;
  late UserRepository _userRepository;
  late AuthFirebase _authFirebase;

  // Constructors
  CurrentUserRepository._() {
    _userFirestore = UserFirestore.getInstance();
    _userRepository = UserRepository.getInstance();
    _authFirebase = AuthFirebase.getInstance();
  }

  @visibleForTesting
  CurrentUserRepository({
    required UserFirestore userFirestore,
    required UserRepository userRepository,
    required AuthFirebase authFirebase,
  }) {
    _userFirestore = userFirestore;
    _userRepository = userRepository;
    _authFirebase = authFirebase;
  }

  // Attributes

  User? _currentUser;

  User get currentUser => _currentUser!;

  StreamController<User> _userStreamController = StreamController<User>();
  late Stream<User> _userStream = _userStreamController.stream;

  Stream<User> get userStream => _userStream;

  // Methods

  Future<User?> getCurrentUser() async {
    if (_currentUser != null) {
      return _currentUser;
    }
    final userId = _authFirebase.getCurrentUserId();
    if (userId == null) {
      return null;
    }

    final appUser = await _userRepository.findUserById(userId);
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
    _currentUser = user;
    _userStreamController.add(user);
  }

  Future<void> answerQuestion(int questionScore, int questionIndex) async {
    // The current date time is sent with 0 for the time attributes to make it easier to retrieve
    final currentDateTime = DateTime.now();
    final newUser = _currentUser!.copyWith(
      score: _currentUser!.score + questionScore,
      lastAnswerDate: DateTime(
        currentDateTime.year,
        currentDateTime.month,
        currentDateTime.day,
      ),
      lastAnswerIndex: questionIndex,
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
