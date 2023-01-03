import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

/// {@template question_dto}
/// Question description
/// {@endtemplate}
@freezed
class QuestionDto with _$QuestionDto {
  /// {@macro question_dto}
  const factory QuestionDto({
    required String category,
    required String correct_answer,
    required String difficulty,
    required List<String> incorrect_answers,
    required String question,
    required String type,
  }) = _Question;

  /// Creates a Question from Json map
  factory QuestionDto.fromJson(Map<String, dynamic> data) =>
      _$QuestionDtoFromJson(data);
}
