// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDocument _$$_QuestionDocumentFromJson(Map<String, dynamic> json) =>
    _$_QuestionDocument(
      results: (json['results'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionDocumentToJson(_$_QuestionDocument instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
