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

  static UserFirestore getInstance() {
    _instance ??= UserFirestore._();

    return _instance!;
  }

  Future<void> createUser(String userId, User user) async {
    await _userCollectionRef.doc(userId).set(user);

    return;
  }

  Future<User?> findUserById(String userId) async {
    DocumentSnapshot<User> data = await _userCollectionRef.doc(userId).get();

    return data.data();
  }
}
