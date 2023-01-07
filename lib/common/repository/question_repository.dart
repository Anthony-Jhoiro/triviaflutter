import 'package:triviaflutter/common/datasources/remote/question_api.dart';
import 'package:triviaflutter/common/datasources/remote/question_firestore.dart';
import 'package:triviaflutter/common/models/dto/question_document_dto/question_document_dto.dart';
import 'package:triviaflutter/common/models/dto/question_dto/question_dto.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';
import 'package:meta/meta.dart';

import '../../core/tools/date_utils.dart';

class QuestionRepository {
  static QuestionRepository? _instance;

  static QuestionRepository getInstance() {
    _instance ??= QuestionRepository._();

    return _instance!;
  }

  late QuestionFirebase _question_firebase;
  late QuestionApi _question_api;
  late UserRepository _user_repository;

  QuestionRepository._() {
    _question_firebase = QuestionFirebase.getInstance();
    _question_api = QuestionApi.getInstance();
    _user_repository = UserRepository.getInstance();
  }

  // This constructor should be only available during testing
  @visibleForTesting
  QuestionRepository({
    required QuestionFirebase question_firebase,
    required QuestionApi question_api,
    required UserRepository user_repository,
  }) {
    _question_firebase = question_firebase;
    _question_api = question_api;
    _user_repository = user_repository;
    _instance = this;
  }

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
    final currentUser = await _user_repository.currentUser;

    var spliceIndex = 0;
    if (currentUser.lastAnswerDate != null &&
        dateIsToday(currentUser.lastAnswerDate!) &&
        currentUser.lastAnswerIndex != null) {
      spliceIndex = currentUser.lastAnswerIndex! + 1;
    }

    var existingQuestions = await _question_firebase.getTodayQuestions();

    if (existingQuestions != null) {
      return existingQuestions.results
          .sublist(spliceIndex)
          .map(QuestionRepository.questionFromDto)
          .toList();
    }

    var newQuestions = await _question_api.getQuestionsOfTheDay();
    await _question_firebase
        .insertQuestions(QuestionDocumentDto(results: newQuestions));

    return newQuestions
        .sublist(spliceIndex)
        .map(QuestionRepository.questionFromDto)
        .toList();
  }

  Future<void> answerQuestion(int questionScore, int questionIndex) {
    return _user_repository.answerQuestion(questionScore, questionIndex);
  }
}
