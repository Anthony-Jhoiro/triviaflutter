import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/repository/question_repository.dart';
import '../bloc/game_cubit.dart';

class GameStateProvider extends RepositoryProvider {
  GameStateProvider({required BlocConsumer<GameCubit, GameStatus> child})
      : super(
          create: (context) => QuestionRepository.getInstance(),
          child: BlocProvider<GameCubit>(
            create: (context) {
              return GameCubit(
                questionRepository:
                    RepositoryProvider.of<QuestionRepository>(context),
              );
            },
            child: child,
          ),
        );
}
