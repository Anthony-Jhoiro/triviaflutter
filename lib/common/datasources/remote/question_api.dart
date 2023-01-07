import 'dart:convert';

import 'package:triviaflutter/common/models/dto/question_dto/question_dto.dart';
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

  Future<List<QuestionDto>> getQuestionsOfTheDay() async {
    final queryParams = {
      'amount': _questionCount.toString(),
    };

    final uri = Uri.https(_baseUrl, "/api.php", queryParams);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // I prefer this approach instead of creating another dto, because it
      // saves to need of maintaining 3 files for exactly the same logic.

      var questionsRaw = jsonDecode(response.body)['results'] as List;

      return questionsRaw.map((e) => QuestionDto.fromJson(e)).toList();
    }
    throw Error();
  }
}
