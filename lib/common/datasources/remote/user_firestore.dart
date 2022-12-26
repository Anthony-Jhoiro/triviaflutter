import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:triviaflutter/common/models/user/user.dart';

class UserFirestore {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static UserFirestore? _instance;

  static late final CollectionReference<User> _userCollectionRef;

  UserFirestore._() {
    _userCollectionRef = _firebaseFirestore.collection("users").withConverter(
          fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
          toFirestore: (questionDocument, _) {
            return questionDocument.toJson();
          },
        );
  }

  static User? mapUserDocumentToUser(DocumentSnapshot<User> document) {
    final documentContent = document.data();
    if (documentContent == null) {
      return null;
    }

    return User(
        id: document.id,
        pseudo: documentContent.pseudo,
        avatar: documentContent.avatar,
        score: documentContent.score,
    );
  }

  static UserFirestore getInstance() {
    _instance ??= UserFirestore._();

    return _instance!;
  }

  Future<void> createUser(String userId, User user) async {
    await _userCollectionRef.doc(userId).set(user);

    return;
  }

  Future<User?> findUserById(String userId) async {
    DocumentSnapshot<User> document = await _userCollectionRef.doc(userId).get();

    return mapUserDocumentToUser(document);
  }

  Future<List<User>> listUsers() async {
    QuerySnapshot<User> querySnapshot = await _userCollectionRef.get();

    return querySnapshot
        .docs
        .map((queryDocumentSnapshot) => mapUserDocumentToUser(queryDocumentSnapshot)!)
        .toList();
  }
}
