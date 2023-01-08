import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:triviaflutter/common/models/dto/question_document_dto/question_document_dto.dart';

class QuestionApi {
  final _baseUrl = "opentdb.com";
  final _questionCount = 10;

  static QuestionApi? _instance;

  QuestionApi._();

  static QuestionApi getInstance() {
    _instance ??= QuestionApi._();

    return _instance!;
  }

  Future<QuestionDocumentDto> getQuestionsOfTheDay() async {
    final queryParams = {
      'amount': _questionCount.toString(),
    };

    final uri = Uri.https(_baseUrl, "/api.php", queryParams);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return QuestionDocumentDto.fromJson(jsonDecode(response.body));
    }
    throw Error();
  }
}
