import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/models/user/user.dart';
import '../../../../../common/repository/user_repository.dart';

part 'ranking_cubit.freezed.dart';

part 'ranking_state.dart';

class RankingCubit extends Cubit<RankingState> {
  final UserRepository userRepository;

  RankingCubit({
    required this.userRepository,
  }) : super(RankingState.initial());

  Future<void> loadUsers() async {
    emit(RankingState.fetchingUsers());
    try {
      var users = await this.userRepository.listUsers();
      emit(RankingState.userLoaded(users));
    } catch (e) {
      emit(RankingState.fetchingError(e.toString()));
    }
  }
}
