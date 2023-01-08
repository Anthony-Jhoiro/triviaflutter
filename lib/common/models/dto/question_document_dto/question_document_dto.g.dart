// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDocumentDto _$$_QuestionDocumentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionDocumentDto(
      results: (json['results'] as List<dynamic>)
          .map((e) => QuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionDocumentDtoToJson(
        _$_QuestionDocumentDto instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
