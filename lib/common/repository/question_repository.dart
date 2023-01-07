import 'package:triviaflutter/common/datasources/remote/question_api.dart';
import 'package:triviaflutter/common/datasources/remote/question_firestore.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/common/models/dto/question_document_dto/question_document_dto.dart';
import 'package:triviaflutter/common/models/dto/question_dto/question_dto.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';

class QuestionRepository {
  static QuestionRepository? _instance;

  static QuestionRepository getInstance() {
    _instance ??= QuestionRepository._();

    return _instance!;
  }

  final QuestionFirebase _question_firebase = QuestionFirebase.getInstance();
  final QuestionApi _question_api = QuestionApi.getInstance();
  final UserRepository _user_repository = UserRepository.getInstance();

  QuestionRepository._();

  static Question questionFromDto(QuestionDto questionDto) {
    return Question(
      category: questionDto.category,
      correct_answer: questionDto.correct_answer,
      answers: [...questionDto.incorrect_answers, questionDto.correct_answer]
        ..shuffle(),
      difficulty: questionDto.difficulty,
      question: questionDto.question,
      type: questionDto.type,
    );
  }

  Future<List<Question>> getQuestionsOfTheDay() async {
    var existingQuestions = await _question_firebase.getTodayQuestions();

    if (existingQuestions != null) {
      return existingQuestions.results
          .map(QuestionRepository.questionFromDto)
          .toList();
    }

    var newQuestions = await _question_api.getQuestionsOfTheDay();
    await _question_firebase
        .insertQuestions(QuestionDocumentDto(results: newQuestions));

    return newQuestions.map(QuestionRepository.questionFromDto).toList();
  }

  Future<void> increaseScore(int amount) {
    return this._user_repository.increaseScore(amount);
  }
}
