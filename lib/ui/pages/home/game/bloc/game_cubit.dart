import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/common/repository/question_repository.dart';

part 'game_cubit.freezed.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameStatus> {
  final QuestionRepository questionRepository;

  late List<Question> questions;

  late Question question;
  int questionIndex = -1;

  GameCubit({required this.questionRepository}) : super(GameStatus.initial());

  Future<void> loadQuestions() async {
    emit(GameStatus.loading());

    questions = await questionRepository.getQuestionsOfTheDay();

    await nextQuestion();
  }

  Future<void> nextQuestion() async {
    questionIndex += 1;
    if (questionIndex == questions.length) {
      emit(GameStatus.loading()); // TODO : change that

      return;
    }
    question = questions[questionIndex];
    emit(GameStatus.questionSelected(question));
  }

  Future<void> selectAnswer(String answer) async {
    emit(GameStatus.answerSelected(question, answer));
  }

  int getScoreFromQuestion(Question question) {
    switch (question.difficulty) {
      case 'hard':
        return 5;
      case 'medium':
        return 3;

      default:
        return 1;
    }
  }

  Future<void> answerConfirmed(String answer) async {
    if (answer == question.correct_answer) {
      emit(GameStatus.validAnswer(question));
    } else {
      emit(GameStatus.wrongAnswer(question));
    }

    await questionRepository.answerQuestion(
        getScoreFromQuestion(question), questionIndex);

    Future.delayed(
      const Duration(seconds: 2),
      nextQuestion,
    );
  }
}
