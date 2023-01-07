// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String? get pseudo => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get lastAnswerDate => throw _privateConstructorUsedError;
  int? get lastAnswerIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String? pseudo,
      String? avatar,
      int? score,
      String? lastAnswerDate,
      int? lastAnswerIndex});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? pseudo = freezed,
    Object? avatar = freezed,
    Object? score = freezed,
    Object? lastAnswerDate = freezed,
    Object? lastAnswerIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pseudo: pseudo == freezed
          ? _value.pseudo
          : pseudo // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lastAnswerDate: lastAnswerDate == freezed
          ? _value.lastAnswerDate
          : lastAnswerDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastAnswerIndex: lastAnswerIndex == freezed
          ? _value.lastAnswerIndex
          : lastAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? pseudo,
      String? avatar,
      int? score,
      String? lastAnswerDate,
      int? lastAnswerIndex});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, (v) => _then(v as _$_UserDto));

  @override
  _$_UserDto get _value => super._value as _$_UserDto;

  @override
  $Res call({
    Object? pseudo = freezed,
    Object? avatar = freezed,
    Object? score = freezed,
    Object? lastAnswerDate = freezed,
    Object? lastAnswerIndex = freezed,
  }) {
    return _then(_$_UserDto(
      pseudo: pseudo == freezed
          ? _value.pseudo
          : pseudo // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lastAnswerDate: lastAnswerDate == freezed
          ? _value.lastAnswerDate
          : lastAnswerDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastAnswerIndex: lastAnswerIndex == freezed
          ? _value.lastAnswerIndex
          : lastAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {required this.pseudo,
      required this.avatar,
      required this.score,
      required this.lastAnswerDate,
      required this.lastAnswerIndex});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String? pseudo;
  @override
  final String? avatar;
  @override
  final int? score;
  @override
  final String? lastAnswerDate;
  @override
  final int? lastAnswerIndex;

  @override
  String toString() {
    return 'UserDto(pseudo: $pseudo, avatar: $avatar, score: $score, lastAnswerDate: $lastAnswerDate, lastAnswerIndex: $lastAnswerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            const DeepCollectionEquality().equals(other.pseudo, pseudo) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality()
                .equals(other.lastAnswerDate, lastAnswerDate) &&
            const DeepCollectionEquality()
                .equals(other.lastAnswerIndex, lastAnswerIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pseudo),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(lastAnswerDate),
      const DeepCollectionEquality().hash(lastAnswerIndex));

  @JsonKey(ignore: true)
  @override
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final String? pseudo,
      required final String? avatar,
      required final int? score,
      required final String? lastAnswerDate,
      required final int? lastAnswerIndex}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String? get pseudo;
  @override
  String? get avatar;
  @override
  int? get score;
  @override
  String? get lastAnswerDate;
  @override
  int? get lastAnswerIndex;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
