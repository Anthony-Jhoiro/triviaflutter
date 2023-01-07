import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triviaflutter/common/models/user.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

part 'user_with_rank.dart';

part 'ranking_cubit.freezed.dart';

part 'ranking_state.dart';

class RankingCubit extends Cubit<RankingState> {
  final UserRepository userRepository;

  late List<UserWithRank> users;

  RankingCubit({
    required this.userRepository,
  }) : super(RankingState.initial());

  List<UserWithRank> _filterLoadedUsers(String filterQuery) {
    final upperFilterQuery = filterQuery.toUpperCase();

    return users
        .where((user) => user.pseudo.toUpperCase().contains(upperFilterQuery))
        .toList();
  }

  Future<void> loadUsers(String filterQuery) async {
    emit(RankingState.fetchingUsers());
    try {
      final fetchedUsers = await this.userRepository.listUsers();
      users = fetchedUsers
          .asMap()
          .entries
          .map((entry) => UserWithRank(
                id: entry.value.id,
                pseudo: entry.value.pseudo,
                score: entry.value.score,
                avatar: entry.value.avatar,
                rank: entry.key,
              ))
          .toList();
      emit(RankingState.userLoaded(
        _filterLoadedUsers(filterQuery),
      ));
    } catch (e) {
      emit(RankingState.fetchingError(e.toString()));
    }
  }

  Future<void> filterUsers(String filterQuery) async {
    emit(RankingState.userLoaded(
      _filterLoadedUsers(filterQuery),
    ));
  }
}
