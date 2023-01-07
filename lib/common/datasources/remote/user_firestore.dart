import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:triviaflutter/common/models/dto/user/user_dto.dart';
import 'package:triviaflutter/common/models/user.dart' as appuser;

class UserFirestore {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static UserFirestore? _instance;

  static late final CollectionReference<UserDto> _userCollectionRef;

  UserFirestore._() {
    _userCollectionRef = _firebaseFirestore.collection("users").withConverter(
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
      pseudo: documentContent.pseudo != null
          ? documentContent.pseudo!
          : "Anonymous",
      avatar: documentContent.avatar != null ? documentContent.avatar! : "",
      score: documentContent.score != null ? documentContent.score! : 0,
    );
  }

  static UserDto mapUserToUserDto(appuser.User user) {
    return UserDto(
      pseudo: user.pseudo,
      avatar: user.avatar,
      score: user.score,
    );
  }

  static UserFirestore getInstance() {
    _instance ??= UserFirestore._();

    return _instance!;
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
    QuerySnapshot<UserDto> querySnapshot = await _userCollectionRef.get();

    return querySnapshot.docs
        .map((queryDocumentSnapshot) =>
            mapUserDocumentToUser(queryDocumentSnapshot)!)
        .toList();
  }

  Future<void> updateUser(appuser.User user) async {
    await _userCollectionRef.doc(user.id).set(UserDto(
          pseudo: user.pseudo,
          avatar: user.avatar,
          score: user.score,
        ));
  }
}
