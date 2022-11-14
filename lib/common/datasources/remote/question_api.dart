import 'dart:convert';

import 'package:triviaflutter/common/models/question/question.dart';
import 'package:http/http.dart' as http;

class QuestionApi {
  final _baseUrl = "opentdb.com";
  final _questionCount = 10;

  static QuestionApi? _instance;

  QuestionApi._();

  static QuestionApi getInstance() {
    _instance ??= QuestionApi._();

    return _instance!;
  }

  Future<List<Question>> getQuestionsOfTheDay() async {
    print("tata");
    final queryParams = {
      'amount': _questionCount.toString(),
    };

    final uri = Uri.https(_baseUrl, "/api.php", queryParams);

    print("here");

    final response = await http.get(uri);

    print("threr");

    if (response.statusCode == 200) {
      // I prefer this approach instead of creating another dto, because it
      // saves to need of maintaining 3 files for exactly the same logic.

      var questionsRaw = jsonDecode(response.body)['results'] as List;

      return questionsRaw.map((e) => Question.fromJson(e)).toList();
    }
    throw Error();
  }
}