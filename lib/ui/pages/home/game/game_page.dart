import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/common/repository/question_repository.dart';
import 'package:triviaflutter/ui/pages/home/game/bloc/game_cubit.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/end_daily_questions.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/question_loading.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/question_view.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Future<List<Question>> futureQuestions;

  GameCubit? gameCubit;

  @override
  Widget build(BuildContext context1) {
    return RepositoryProvider(
      create: (_) => QuestionRepository.getInstance(),
      child: BlocProvider<GameCubit>(
        create: (context) {
          gameCubit = GameCubit(
            questionRepository:
                RepositoryProvider.of<QuestionRepository>(context),
          );

          gameCubit!.loadQuestions();

          return gameCubit!;
        },
        child: BlocConsumer<GameCubit, GameStatus>(
          listener: (context, state) {
            return;
          },
          builder: (context, state) {
            if (state is Loading) {
              return QuestionLoading();
            }

            if (state is QuestionSelected ||
                state is AnswerSelected ||
                state is ValidAnswer ||
                state is WrongAnswer) {
              return QuestionView(
                question: gameCubit!.question,
                answers: gameCubit!.question.answers,
                gameCubit: gameCubit!,
              );
            }

            if (state is NoMoreQuestions) {
              return EndDailyQuestions();
            }

            return const QuestionLoading();
          },
        ),
      ),
    );
  }
}
