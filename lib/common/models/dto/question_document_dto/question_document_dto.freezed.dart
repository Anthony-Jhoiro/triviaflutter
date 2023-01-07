// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDocumentDto _$QuestionDocumentDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDocumentDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDocumentDto {
  List<QuestionDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDocumentDtoCopyWith<QuestionDocumentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDocumentDtoCopyWith<$Res> {
  factory $QuestionDocumentDtoCopyWith(
          QuestionDocumentDto value, $Res Function(QuestionDocumentDto) then) =
      _$QuestionDocumentDtoCopyWithImpl<$Res>;
  $Res call({List<QuestionDto> results});
}

/// @nodoc
class _$QuestionDocumentDtoCopyWithImpl<$Res>
    implements $QuestionDocumentDtoCopyWith<$Res> {
  _$QuestionDocumentDtoCopyWithImpl(this._value, this._then);

  final QuestionDocumentDto _value;
  // ignore: unused_field
  final $Res Function(QuestionDocumentDto) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionDocumentDtoCopyWith<$Res>
    implements $QuestionDocumentDtoCopyWith<$Res> {
  factory _$$_QuestionDocumentDtoCopyWith(_$_QuestionDocumentDto value,
          $Res Function(_$_QuestionDocumentDto) then) =
      __$$_QuestionDocumentDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<QuestionDto> results});
}

/// @nodoc
class __$$_QuestionDocumentDtoCopyWithImpl<$Res>
    extends _$QuestionDocumentDtoCopyWithImpl<$Res>
    implements _$$_QuestionDocumentDtoCopyWith<$Res> {
  __$$_QuestionDocumentDtoCopyWithImpl(_$_QuestionDocumentDto _value,
      $Res Function(_$_QuestionDocumentDto) _then)
      : super(_value, (v) => _then(v as _$_QuestionDocumentDto));

  @override
  _$_QuestionDocumentDto get _value => super._value as _$_QuestionDocumentDto;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_QuestionDocumentDto(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDocumentDto implements _QuestionDocumentDto {
  const _$_QuestionDocumentDto({required final List<QuestionDto> results})
      : _results = results;

  factory _$_QuestionDocumentDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDocumentDtoFromJson(json);

  final List<QuestionDto> _results;
  @override
  List<QuestionDto> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'QuestionDocumentDto(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDocumentDto &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionDocumentDtoCopyWith<_$_QuestionDocumentDto> get copyWith =>
      __$$_QuestionDocumentDtoCopyWithImpl<_$_QuestionDocumentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDocumentDtoToJson(
      this,
    );
  }
}

abstract class _QuestionDocumentDto implements QuestionDocumentDto {
  const factory _QuestionDocumentDto(
      {required final List<QuestionDto> results}) = _$_QuestionDocumentDto;

  factory _QuestionDocumentDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDocumentDto.fromJson;

  @override
  List<QuestionDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDocumentDtoCopyWith<_$_QuestionDocumentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
