// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      category: json['category'] as String,
      correct_answer: json['correct_answer'] as String,
      difficulty: json['difficulty'] as String,
      incorrect_answers: (json['incorrect_answers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      question: json['question'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'category': instance.category,
      'correct_answer': instance.correct_answer,
      'difficulty': instance.difficulty,
      'incorrect_answers': instance.incorrect_answers,
      'question': instance.question,
      'type': instance.type,
    };
