import 'package:freezed_annotation/freezed_annotation.dart';

import '../question/question.dart';

part 'question_document.freezed.dart';
part 'question_document.g.dart';

/// {@template question_document}
/// QuestionDocument description
/// {@endtemplate}
@freezed
class QuestionDocument with _$QuestionDocument {
  /// {@macro question_document}
  const factory QuestionDocument({
    required List<Question> results,
  }) = _QuestionDocument;

  /// Creates a QuestionDocument from Json map
  factory QuestionDocument.fromJson(Map<String, dynamic> data) =>
      _$QuestionDocumentFromJson(data);
}
