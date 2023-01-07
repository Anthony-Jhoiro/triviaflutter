import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';
import 'package:triviaflutter/common/models/dto/user/user_dto.dart';
import 'package:triviaflutter/common/models/user.dart';

final pseudo = "Lily Aldrin";
final avatar = "https://avatar.com/lily_altrin.jpg";
final id = "moumoulareinedesmouettes";
final score = 12345;

void main() {
  group("UserFirestore", () {
    final fakeFirestore = FakeFirebaseFirestore();

    final userFirestore = UserFirestore(
      firebaseFirestore: fakeFirestore,
    );

    test("createUser", () async {
      final userToCreate = User(
        id: id,
        pseudo: pseudo,
        score: score,
        avatar: avatar,
      );

      userFirestore.createUser(userToCreate);

      final firebaseDocument = await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(userToCreate.id)
          .get();

      final userDto = UserDto.fromJson(firebaseDocument.data()!);

      expect(firebaseDocument.id, userToCreate.id);
      expect(userDto.pseudo, userToCreate.pseudo);
      expect(userDto.score, userToCreate.score);
      expect(userDto.avatar, userToCreate.avatar);
    });

    test("findUserById", () async {
      final dto = UserDto(
        pseudo: pseudo,
        avatar: avatar,
        score: score,
        lastAnswerDate: null,
        lastAnswerIndex: null,
      );

      await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(id)
          .set(dto.toJson());

      final user = await userFirestore.findUserById(id);

      expect(user != null, true);

      expect(user!.id, id);
      expect(user.pseudo, pseudo);
      expect(user.score, score);
      expect(user.avatar, avatar);
    });

    test("listUsers", () async {
      final dto1 = UserDto(
        pseudo: pseudo,
        avatar: avatar,
        score: score,
        lastAnswerDate: null,
        lastAnswerIndex: null,
      );

      final id2 = "coucoucestmoi";

      final dto2 = UserDto(
        pseudo: "Barney Stinson",
        avatar: "https://avatar.com/lily_altrin.jpg",
        score: 99999999,
        lastAnswerDate: null,
        lastAnswerIndex: null,
      );

      await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(id)
          .set(dto1.toJson());

      await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(id2)
          .set(dto2.toJson());

      final users = await userFirestore.listUsers();

      expect(users.length, 2);

      expect(users[0].score > users[1].score, true);
    });

    test("updateUser", () async {
      final dto1 = UserDto(
        pseudo: pseudo,
        avatar: avatar,
        score: score,
        lastAnswerDate: null,
        lastAnswerIndex: null,
      );

      await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(id)
          .set(dto1.toJson());

      final userWithChanges = User(
        id: id,
        pseudo: "Ted Mosby",
        score: 987654,
        avatar: "https://avatar.com/ted_mosby.jpg",
      );

      await userFirestore.updateUser(userWithChanges);

      final firebaseDocument = await fakeFirestore
          .collection(UserFirestore.userCollectionName)
          .doc(userWithChanges.id)
          .get();

      final userDto = UserDto.fromJson(firebaseDocument.data()!);

      expect(firebaseDocument.id, userWithChanges.id);
      expect(userDto.pseudo, userWithChanges.pseudo);
      expect(userDto.score, userWithChanges.score);
      expect(userDto.avatar, userWithChanges.avatar);
    });
  });
}
