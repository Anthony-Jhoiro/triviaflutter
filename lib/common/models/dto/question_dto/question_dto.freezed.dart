// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  String get category => throw _privateConstructorUsedError;
  String get correct_answer => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  List<String> get incorrect_answers => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String correct_answer,
      String difficulty,
      List<String> incorrect_answers,
      String question,
      String type});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res> implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  final QuestionDto _value;
  // ignore: unused_field
  final $Res Function(QuestionDto) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? correct_answer = freezed,
    Object? difficulty = freezed,
    Object? incorrect_answers = freezed,
    Object? question = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      correct_answer: correct_answer == freezed
          ? _value.correct_answer
          : correct_answer // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      incorrect_answers: incorrect_answers == freezed
          ? _value.incorrect_answers
          : incorrect_answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      String correct_answer,
      String difficulty,
      List<String> incorrect_answers,
      String question,
      String type});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionDtoCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? category = freezed,
    Object? correct_answer = freezed,
    Object? difficulty = freezed,
    Object? incorrect_answers = freezed,
    Object? question = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Question(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      correct_answer: correct_answer == freezed
          ? _value.correct_answer
          : correct_answer // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      incorrect_answers: incorrect_answers == freezed
          ? _value._incorrect_answers
          : incorrect_answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {required this.category,
      required this.correct_answer,
      required this.difficulty,
      required final List<String> incorrect_answers,
      required this.question,
      required this.type})
      : _incorrect_answers = incorrect_answers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String category;
  @override
  final String correct_answer;
  @override
  final String difficulty;
  final List<String> _incorrect_answers;
  @override
  List<String> get incorrect_answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrect_answers);
  }

  @override
  final String question;
  @override
  final String type;

  @override
  String toString() {
    return 'QuestionDto(category: $category, correct_answer: $correct_answer, difficulty: $difficulty, incorrect_answers: $incorrect_answers, question: $question, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.correct_answer, correct_answer) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality()
                .equals(other._incorrect_answers, _incorrect_answers) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(correct_answer),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(_incorrect_answers),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements QuestionDto {
  const factory _Question(
      {required final String category,
      required final String correct_answer,
      required final String difficulty,
      required final List<String> incorrect_answers,
      required final String question,
      required final String type}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get category;
  @override
  String get correct_answer;
  @override
  String get difficulty;
  @override
  List<String> get incorrect_answers;
  @override
  String get question;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
