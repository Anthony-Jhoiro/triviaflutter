import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';
import 'package:triviaflutter/ui/pages/home/ranking/bloc/ranking_cubit.dart';

class MockUserRepository extends Mock implements UserRepository {}

var users = <UserWithRank>[
  UserWithRank(
    id: "111",
    pseudo: "Lily Aldrin",
    score: 55,
    avatar: "",
    rank: 1,
  ),
  UserWithRank(
    id: "222",
    pseudo: "Robin Sherbatsky",
    score: 44,
    avatar: "",
    rank: 2,
  ),
];

void main() {
  group("RankingCubit", () {
    late MockUserRepository mockUserRepository;
    late RankingCubit rankingCubit;

    void mockSetup() {
      mockUserRepository = MockUserRepository();
      rankingCubit = RankingCubit(
        userRepository: mockUserRepository,
      );
    }

    final Exception tException = Exception('Failed to fetch users.');

    blocTest<RankingCubit, RankingState>(
      'should emit [FetchingUsers, UserLoaded] when loading users',
      build: () => rankingCubit,
      act: (cubit) => cubit.loadUsers(""),
      setUp: () {
        mockSetup();
        when(() => mockUserRepository.listUsers())
            .thenAnswer((_) => Future.value(users));
      },
      expect: () => <RankingState>[
        FetchingUsers(),
        UserLoaded(users),
      ],
    );

    blocTest<RankingCubit, RankingState>(
      'should emit [UserLoaded] when filtering users',
      build: () => rankingCubit,
      setUp: () {
        mockSetup();
        when(() => mockUserRepository.listUsers())
            .thenAnswer((_) => Future.value(users));
      },
      act: (cubit) {
        rankingCubit.users = users;
        cubit.filterUsers("ald");
      },
      expect: () => <RankingState>[
        UserLoaded([users[0]]),
      ],
    );

    blocTest<RankingCubit, RankingState>(
      'should emit [FetchingUsers, FetchingError] when loading users',
      build: () => rankingCubit,
      act: (cubit) => cubit.loadUsers(""),
      setUp: () {
        mockSetup();
        when(() => mockUserRepository.listUsers()).thenThrow(tException);
      },
      expect: () => <RankingState>[
        FetchingUsers(),
        FetchingError(tException.toString()),
      ],
    );
  });
}
