// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStatusCopyWith<$Res> {
  factory $GameStatusCopyWith(
          GameStatus value, $Res Function(GameStatus) then) =
      _$GameStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStatusCopyWithImpl<$Res> implements $GameStatusCopyWith<$Res> {
  _$GameStatusCopyWithImpl(this._value, this._then);

  final GameStatus _value;
  // ignore: unused_field
  final $Res Function(GameStatus) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$GameStatusCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'GameStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GameStatus {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$GameStatusCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'GameStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GameStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$QuestionsLoadedCopyWith<$Res> {
  factory _$$QuestionsLoadedCopyWith(
          _$QuestionsLoaded value, $Res Function(_$QuestionsLoaded) then) =
      __$$QuestionsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionsLoadedCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res>
    implements _$$QuestionsLoadedCopyWith<$Res> {
  __$$QuestionsLoadedCopyWithImpl(
      _$QuestionsLoaded _value, $Res Function(_$QuestionsLoaded) _then)
      : super(_value, (v) => _then(v as _$QuestionsLoaded));

  @override
  _$QuestionsLoaded get _value => super._value as _$QuestionsLoaded;
}

/// @nodoc

class _$QuestionsLoaded implements QuestionsLoaded {
  const _$QuestionsLoaded();

  @override
  String toString() {
    return 'GameStatus.questionsLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return questionsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return questionsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (questionsLoaded != null) {
      return questionsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return questionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return questionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (questionsLoaded != null) {
      return questionsLoaded(this);
    }
    return orElse();
  }
}

abstract class QuestionsLoaded implements GameStatus {
  const factory QuestionsLoaded() = _$QuestionsLoaded;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$GameStatusCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GameStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GameStatus {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionSelectedCopyWith<$Res> {
  factory _$$QuestionSelectedCopyWith(
          _$QuestionSelected value, $Res Function(_$QuestionSelected) then) =
      __$$QuestionSelectedCopyWithImpl<$Res>;
  $Res call({Question question, List<String> answers});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionSelectedCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res>
    implements _$$QuestionSelectedCopyWith<$Res> {
  __$$QuestionSelectedCopyWithImpl(
      _$QuestionSelected _value, $Res Function(_$QuestionSelected) _then)
      : super(_value, (v) => _then(v as _$QuestionSelected));

  @override
  _$QuestionSelected get _value => super._value as _$QuestionSelected;

  @override
  $Res call({
    Object? question = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$QuestionSelected(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$QuestionSelected implements QuestionSelected {
  const _$QuestionSelected(this.question, final List<String> answers)
      : _answers = answers;

  @override
  final Question question;
  final List<String> _answers;
  @override
  List<String> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'GameStatus.questionSelected(question: $question, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionSelected &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  _$$QuestionSelectedCopyWith<_$QuestionSelected> get copyWith =>
      __$$QuestionSelectedCopyWithImpl<_$QuestionSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return questionSelected(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return questionSelected?.call(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(question, answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return questionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return questionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (questionSelected != null) {
      return questionSelected(this);
    }
    return orElse();
  }
}

abstract class QuestionSelected implements GameStatus {
  const factory QuestionSelected(
      final Question question, final List<String> answers) = _$QuestionSelected;

  Question get question;
  List<String> get answers;
  @JsonKey(ignore: true)
  _$$QuestionSelectedCopyWith<_$QuestionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedCopyWith<$Res> {
  factory _$$AnswerSelectedCopyWith(
          _$AnswerSelected value, $Res Function(_$AnswerSelected) then) =
      __$$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$AnswerSelectedCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res>
    implements _$$AnswerSelectedCopyWith<$Res> {
  __$$AnswerSelectedCopyWithImpl(
      _$AnswerSelected _value, $Res Function(_$AnswerSelected) _then)
      : super(_value, (v) => _then(v as _$AnswerSelected));

  @override
  _$AnswerSelected get _value => super._value as _$AnswerSelected;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$AnswerSelected(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$AnswerSelected implements AnswerSelected {
  const _$AnswerSelected(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'GameStatus.answerSelected(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelected &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      __$$AnswerSelectedCopyWithImpl<_$AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return answerSelected(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return answerSelected?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements GameStatus {
  const factory AnswerSelected(final Question question) = _$AnswerSelected;

  Question get question;
  @JsonKey(ignore: true)
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerConfirmedCopyWith<$Res> {
  factory _$$AnswerConfirmedCopyWith(
          _$AnswerConfirmed value, $Res Function(_$AnswerConfirmed) then) =
      __$$AnswerConfirmedCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$AnswerConfirmedCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res>
    implements _$$AnswerConfirmedCopyWith<$Res> {
  __$$AnswerConfirmedCopyWithImpl(
      _$AnswerConfirmed _value, $Res Function(_$AnswerConfirmed) _then)
      : super(_value, (v) => _then(v as _$AnswerConfirmed));

  @override
  _$AnswerConfirmed get _value => super._value as _$AnswerConfirmed;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$AnswerConfirmed(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$AnswerConfirmed implements AnswerConfirmed {
  const _$AnswerConfirmed(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'GameStatus.answerConfirmed(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerConfirmed &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$AnswerConfirmedCopyWith<_$AnswerConfirmed> get copyWith =>
      __$$AnswerConfirmedCopyWithImpl<_$AnswerConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return answerConfirmed(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return answerConfirmed?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (answerConfirmed != null) {
      return answerConfirmed(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return answerConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return answerConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (answerConfirmed != null) {
      return answerConfirmed(this);
    }
    return orElse();
  }
}

abstract class AnswerConfirmed implements GameStatus {
  const factory AnswerConfirmed(final Question question) = _$AnswerConfirmed;

  Question get question;
  @JsonKey(ignore: true)
  _$$AnswerConfirmedCopyWith<_$AnswerConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WrongAnswerCopyWith<$Res> {
  factory _$$WrongAnswerCopyWith(
          _$WrongAnswer value, $Res Function(_$WrongAnswer) then) =
      __$$WrongAnswerCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$WrongAnswerCopyWithImpl<$Res> extends _$GameStatusCopyWithImpl<$Res>
    implements _$$WrongAnswerCopyWith<$Res> {
  __$$WrongAnswerCopyWithImpl(
      _$WrongAnswer _value, $Res Function(_$WrongAnswer) _then)
      : super(_value, (v) => _then(v as _$WrongAnswer));

  @override
  _$WrongAnswer get _value => super._value as _$WrongAnswer;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$WrongAnswer(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$WrongAnswer implements WrongAnswer {
  const _$WrongAnswer(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'GameStatus.wrongAnswer(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongAnswer &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$WrongAnswerCopyWith<_$WrongAnswer> get copyWith =>
      __$$WrongAnswerCopyWithImpl<_$WrongAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return wrongAnswer(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return wrongAnswer?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class WrongAnswer implements GameStatus {
  const factory WrongAnswer(final Question question) = _$WrongAnswer;

  Question get question;
  @JsonKey(ignore: true)
  _$$WrongAnswerCopyWith<_$WrongAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidAnswerCopyWith<$Res> {
  factory _$$ValidAnswerCopyWith(
          _$ValidAnswer value, $Res Function(_$ValidAnswer) then) =
      __$$ValidAnswerCopyWithImpl<$Res>;
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$ValidAnswerCopyWithImpl<$Res> extends _$GameStatusCopyWithImpl<$Res>
    implements _$$ValidAnswerCopyWith<$Res> {
  __$$ValidAnswerCopyWithImpl(
      _$ValidAnswer _value, $Res Function(_$ValidAnswer) _then)
      : super(_value, (v) => _then(v as _$ValidAnswer));

  @override
  _$ValidAnswer get _value => super._value as _$ValidAnswer;

  @override
  $Res call({
    Object? question = freezed,
  }) {
    return _then(_$ValidAnswer(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$ValidAnswer implements ValidAnswer {
  const _$ValidAnswer(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'GameStatus.validAnswer(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidAnswer &&
            const DeepCollectionEquality().equals(other.question, question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(question));

  @JsonKey(ignore: true)
  @override
  _$$ValidAnswerCopyWith<_$ValidAnswer> get copyWith =>
      __$$ValidAnswerCopyWithImpl<_$ValidAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() questionsLoaded,
    required TResult Function(String message) error,
    required TResult Function(Question question, List<String> answers)
        questionSelected,
    required TResult Function(Question question) answerSelected,
    required TResult Function(Question question) answerConfirmed,
    required TResult Function(Question question) wrongAnswer,
    required TResult Function(Question question) validAnswer,
  }) {
    return validAnswer(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
  }) {
    return validAnswer?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? questionsLoaded,
    TResult Function(String message)? error,
    TResult Function(Question question, List<String> answers)? questionSelected,
    TResult Function(Question question)? answerSelected,
    TResult Function(Question question)? answerConfirmed,
    TResult Function(Question question)? wrongAnswer,
    TResult Function(Question question)? validAnswer,
    required TResult orElse(),
  }) {
    if (validAnswer != null) {
      return validAnswer(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(QuestionsLoaded value) questionsLoaded,
    required TResult Function(Error value) error,
    required TResult Function(QuestionSelected value) questionSelected,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(AnswerConfirmed value) answerConfirmed,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(ValidAnswer value) validAnswer,
  }) {
    return validAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
  }) {
    return validAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(QuestionsLoaded value)? questionsLoaded,
    TResult Function(Error value)? error,
    TResult Function(QuestionSelected value)? questionSelected,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(AnswerConfirmed value)? answerConfirmed,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(ValidAnswer value)? validAnswer,
    required TResult orElse(),
  }) {
    if (validAnswer != null) {
      return validAnswer(this);
    }
    return orElse();
  }
}

abstract class ValidAnswer implements GameStatus {
  const factory ValidAnswer(final Question question) = _$ValidAnswer;

  Question get question;
  @JsonKey(ignore: true)
  _$$ValidAnswerCopyWith<_$ValidAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
