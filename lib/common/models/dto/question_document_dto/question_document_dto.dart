import 'package:freezed_annotation/freezed_annotation.dart';

import '../question_dto/question_dto.dart';


part 'question_document_dto.freezed.dart';
part 'question_document_dto.g.dart';

/// {@template question_document_dto}
/// QuestionDocument description
/// {@endtemplate}
@freezed
class QuestionDocumentDto with _$QuestionDocumentDto {
  /// {@macro question_document_dto}
  const factory QuestionDocumentDto({
    required List<QuestionDto> results,
  }) = _QuestionDocumentDto;

  /// Creates a QuestionDocument from Json map
  factory QuestionDocumentDto.fromJson(Map<String, dynamic> data) =>
      _$QuestionDocumentDtoFromJson(data);
}
