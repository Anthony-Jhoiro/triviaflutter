import 'package:triviaflutter/common/datasources/remote/question_api.dart';
import 'package:triviaflutter/common/models/question_document/question_document.dart';

import '../datasources/remote/question_firestore.dart';
import '../models/question/question.dart';

class QuestionRepository {
  static QuestionRepository? _instance;
  static QuestionRepository getInstance() {
    _instance ??= QuestionRepository._();

    return _instance!;
  }

  final QuestionFirebase _question_firebase = QuestionFirebase.getInstance();
  final QuestionApi _question_api = QuestionApi.getInstance();

  QuestionRepository._();

  Future<List<Question>> getQuestionsOfTheDay() async {
    var existingQuestions = await _question_firebase.getTodayQuestions();

    if (existingQuestions != null) {
      return existingQuestions.results;
    }

    var newQuestions = await _question_api.getQuestionsOfTheDay();
    await _question_firebase
        .insertQuestions(QuestionDocument(results: newQuestions));

    return newQuestions;
  }
}
