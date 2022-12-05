import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/models/question/question.dart';
import '../../../../../common/repository/question_repository.dart';

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
    emit(GameStatus.questionSelected(question, shuffleAnswers(question)));
  }

  List<String> shuffleAnswers(Question question) {
    return [...question.incorrect_answers, question.correct_answer]..shuffle();
  }
}
