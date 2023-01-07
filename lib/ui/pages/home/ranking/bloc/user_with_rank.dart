part of 'ranking_cubit.dart';

class UserWithRank extends User {
  int rank;

  UserWithRank({
    required super.id,
    required super.pseudo,
    required super.score,
    required super.avatar,
    required this.rank,
  });
}
