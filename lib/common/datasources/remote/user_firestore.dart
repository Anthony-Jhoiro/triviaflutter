import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:triviaflutter/common/models/dto/user/user_dto.dart';
import 'package:triviaflutter/common/models/user.dart' as appuser;

import '../../../core/tools/date_utils.dart';

class UserFirestore {
  static UserFirestore? _instance;

  static UserFirestore getInstance() {
    _instance ??= UserFirestore._();

    return _instance!;
  }

  late FirebaseFirestore firebaseFirestore;

  late final CollectionReference<UserDto> _userCollectionRef;

  static String get userCollectionName => "users";

  UserFirestore._() {
    firebaseFirestore = FirebaseFirestore.instance;
    _initCollection();
  }

  // This constructor should be only available during testing
  @visibleForTesting
  UserFirestore({
    required FirebaseFirestore firebaseFirestore,
  }) {
    this.firebaseFirestore = firebaseFirestore;
    _initCollection();
    _instance = this;
  }

  void _initCollection() {
    _userCollectionRef = firebaseFirestore
        .collection(userCollectionName)
        .withConverter(
          fromFirestore: (snapshot, _) => UserDto.fromJson(snapshot.data()!),
          toFirestore: (questionDocument, _) {
            return questionDocument.toJson();
          },
        );
  }

  static appuser.User? mapUserDocumentToUser(
    DocumentSnapshot<UserDto> document,
  ) {
    final documentContent = document.data();
    if (documentContent == null) {
      return null;
    }

    return appuser.User(
      id: document.id,
      pseudo: documentContent.pseudo ?? "Anonymous",
      avatar: documentContent.avatar ?? "",
      score: documentContent.score ?? 0,
      lastAnswerDate: documentContent.lastAnswerDate == null
          ? null
          : parseDateFromIsoFormat(documentContent.lastAnswerDate!),
      lastAnswerIndex: documentContent.lastAnswerIndex,
    );
  }

  static UserDto mapUserToUserDto(appuser.User user) {
    return UserDto(
      pseudo: user.pseudo,
      avatar: user.avatar,
      score: user.score,
      lastAnswerIndex: user.lastAnswerIndex,
      lastAnswerDate: user.lastAnswerDate == null
          ? null
          : formatDateInIsoFormat(user.lastAnswerDate!),
    );
  }

  Future<void> createUser(appuser.User user) async {
    await _userCollectionRef
        .doc(user.id)
        .set(UserFirestore.mapUserToUserDto(user));

    return;
  }

  Future<appuser.User?> findUserById(String userId) async {
    DocumentSnapshot<UserDto> document =
        await _userCollectionRef.doc(userId).get();

    return mapUserDocumentToUser(document);
  }

  Future<List<appuser.User>> listUsers() async {
    QuerySnapshot<UserDto> querySnapshot =
        await _userCollectionRef.orderBy("score", descending: true).get();

    return querySnapshot.docs
        .map((queryDocumentSnapshot) =>
            mapUserDocumentToUser(queryDocumentSnapshot)!)
        .toList();
  }

  Future<void> updateUser(appuser.User user) async {
    await _userCollectionRef.doc(user.id).set(mapUserToUserDto(user));
  }
}
