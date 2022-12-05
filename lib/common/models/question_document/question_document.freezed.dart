// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDocument _$QuestionDocumentFromJson(Map<String, dynamic> json) {
  return _QuestionDocument.fromJson(json);
}

/// @nodoc
mixin _$QuestionDocument {
  List<Question> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDocumentCopyWith<QuestionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDocumentCopyWith<$Res> {
  factory $QuestionDocumentCopyWith(
          QuestionDocument value, $Res Function(QuestionDocument) then) =
      _$QuestionDocumentCopyWithImpl<$Res>;
  $Res call({List<Question> results});
}

/// @nodoc
class _$QuestionDocumentCopyWithImpl<$Res>
    implements $QuestionDocumentCopyWith<$Res> {
  _$QuestionDocumentCopyWithImpl(this._value, this._then);

  final QuestionDocument _value;
  // ignore: unused_field
  final $Res Function(QuestionDocument) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionDocumentCopyWith<$Res>
    implements $QuestionDocumentCopyWith<$Res> {
  factory _$$_QuestionDocumentCopyWith(
          _$_QuestionDocument value, $Res Function(_$_QuestionDocument) then) =
      __$$_QuestionDocumentCopyWithImpl<$Res>;
  @override
  $Res call({List<Question> results});
}

/// @nodoc
class __$$_QuestionDocumentCopyWithImpl<$Res>
    extends _$QuestionDocumentCopyWithImpl<$Res>
    implements _$$_QuestionDocumentCopyWith<$Res> {
  __$$_QuestionDocumentCopyWithImpl(
      _$_QuestionDocument _value, $Res Function(_$_QuestionDocument) _then)
      : super(_value, (v) => _then(v as _$_QuestionDocument));

  @override
  _$_QuestionDocument get _value => super._value as _$_QuestionDocument;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_QuestionDocument(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDocument implements _QuestionDocument {
  const _$_QuestionDocument({required final List<Question> results})
      : _results = results;

  factory _$_QuestionDocument.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDocumentFromJson(json);

  final List<Question> _results;
  @override
  List<Question> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'QuestionDocument(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDocument &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionDocumentCopyWith<_$_QuestionDocument> get copyWith =>
      __$$_QuestionDocumentCopyWithImpl<_$_QuestionDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDocumentToJson(
      this,
    );
  }
}

abstract class _QuestionDocument implements QuestionDocument {
  const factory _QuestionDocument({required final List<Question> results}) =
      _$_QuestionDocument;

  factory _QuestionDocument.fromJson(Map<String, dynamic> json) =
      _$_QuestionDocument.fromJson;

  @override
  List<Question> get results;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDocumentCopyWith<_$_QuestionDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
