part of 'game_cubit.dart';

@freezed
class GameStatus with _$GameStatus {
  const factory GameStatus.initial() = Initial;

  const factory GameStatus.loading() = Loading;

  const factory GameStatus.questionsLoaded() = QuestionsLoaded;

  const factory GameStatus.error(String message) = Error;

  const factory GameStatus.questionSelected(Question question) =
      QuestionSelected;

  const factory GameStatus.answerSelected(
    Question question,
    String selectedAnswer,
  ) = AnswerSelected;

  const factory GameStatus.answerConfirmed(Question question) = AnswerConfirmed;

  const factory GameStatus.wrongAnswer(Question question) = WrongAnswer;

  const factory GameStatus.validAnswer(Question question) = ValidAnswer;
}
