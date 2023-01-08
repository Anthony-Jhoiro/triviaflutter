import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triviaflutter/common/datasources/remote/auth_firebase.dart';
import 'package:triviaflutter/common/datasources/remote/user_firestore.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

class MockUserFirestore extends Mock implements UserFirestore {}

class MockUserRepository extends Mock implements UserRepository {}

class MockAuthFirebase extends Mock implements AuthFirebase {}

void main() {
  group("CurrentUserRepository", () {
    final mockUserFirestore = MockUserFirestore();
    final mockUserRepository = MockUserRepository();
    final mockAuthFirebase = MockAuthFirebase();

    final currentUserRepository = CurrentUserRepository(
      userRepository: mockUserRepository,
      authFirebase: mockAuthFirebase,
      userFirestore: mockUserFirestore,
    );

    test("logout", () async {
      when(() => mockAuthFirebase.logout())
          .thenAnswer((invocation) => Future.value());

      await currentUserRepository.logout();
      verify(() => mockAuthFirebase.logout()).called(1);
    });
  });
}
