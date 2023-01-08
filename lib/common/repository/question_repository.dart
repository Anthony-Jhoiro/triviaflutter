import 'package:meta/meta.dart';
import 'package:triviaflutter/common/datasources/remote/question_api.dart';
import 'package:triviaflutter/common/datasources/remote/question_firestore.dart';
import 'package:triviaflutter/common/models/dto/question_dto/question_dto.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';

import '../../core/tools/date_utils.dart';

class QuestionRepository {
  static QuestionRepository? _instance;

  static QuestionRepository getInstance() {
    _instance ??= QuestionRepository._();

    return _instance!;
  }

  late QuestionFirebase _questionFirebase;
  late QuestionApi _questionApi;
  late CurrentUserRepository _currentUserRepository;

  QuestionRepository._() {
    _questionFirebase = QuestionFirebase.getInstance();
    _questionApi = QuestionApi.getInstance();
    _currentUserRepository = CurrentUserRepository.getInstance();
  }

  // This constructor should be only available during testing
  @visibleForTesting
  QuestionRepository({
    required QuestionFirebase questionFirebase,
    required QuestionApi questionApi,
    required CurrentUserRepository currentUserRepository,
  }) {
    _questionFirebase = questionFirebase;
    _questionApi = questionApi;
    _currentUserRepository = currentUserRepository;
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
    final currentUser = await _currentUserRepository.currentUser;

    var spliceIndex = 0;
    if (currentUser.lastAnswerDate != null &&
        dateIsToday(currentUser.lastAnswerDate!) &&
        currentUser.lastAnswerIndex != null) {
      spliceIndex = currentUser.lastAnswerIndex! + 1;
    }

    var existingQuestions = await _questionFirebase.getTodayQuestions();

    if (existingQuestions != null) {
      return existingQuestions.results
          .sublist(spliceIndex)
          .map(QuestionRepository.questionFromDto)
          .toList();
    }

    final newQuestionDocument = await _questionApi.getQuestionsOfTheDay();
    await _questionFirebase.insertQuestions(newQuestionDocument);

    return newQuestionDocument.results
        .sublist(spliceIndex)
        .map(QuestionRepository.questionFromDto)
        .toList();
  }

  Future<void> answerQuestion(int questionScore, int questionIndex) {
    return _currentUserRepository.answerQuestion(questionScore, questionIndex);
  }
}
