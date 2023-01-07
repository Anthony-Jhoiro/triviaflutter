// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ranking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RankingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingUsers,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<UserWithRank> users) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FetchingUsers value) fetchingUsers,
    required TResult Function(FetchingError value) fetchingError,
    required TResult Function(UserLoaded value) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingStateCopyWith<$Res> {
  factory $RankingStateCopyWith(
          RankingState value, $Res Function(RankingState) then) =
      _$RankingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RankingStateCopyWithImpl<$Res> implements $RankingStateCopyWith<$Res> {
  _$RankingStateCopyWithImpl(this._value, this._then);

  final RankingState _value;
  // ignore: unused_field
  final $Res Function(RankingState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$RankingStateCopyWithImpl<$Res>
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
    return 'RankingState.initial()';
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
    required TResult Function() fetchingUsers,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<UserWithRank> users) userLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
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
    required TResult Function(FetchingUsers value) fetchingUsers,
    required TResult Function(FetchingError value) fetchingError,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RankingState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FetchingUsersCopyWith<$Res> {
  factory _$$FetchingUsersCopyWith(
          _$FetchingUsers value, $Res Function(_$FetchingUsers) then) =
      __$$FetchingUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingUsersCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res>
    implements _$$FetchingUsersCopyWith<$Res> {
  __$$FetchingUsersCopyWithImpl(
      _$FetchingUsers _value, $Res Function(_$FetchingUsers) _then)
      : super(_value, (v) => _then(v as _$FetchingUsers));

  @override
  _$FetchingUsers get _value => super._value as _$FetchingUsers;
}

/// @nodoc

class _$FetchingUsers implements FetchingUsers {
  const _$FetchingUsers();

  @override
  String toString() {
    return 'RankingState.fetchingUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingUsers,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<UserWithRank> users) userLoaded,
  }) {
    return fetchingUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
  }) {
    return fetchingUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
    required TResult orElse(),
  }) {
    if (fetchingUsers != null) {
      return fetchingUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FetchingUsers value) fetchingUsers,
    required TResult Function(FetchingError value) fetchingError,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return fetchingUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return fetchingUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (fetchingUsers != null) {
      return fetchingUsers(this);
    }
    return orElse();
  }
}

abstract class FetchingUsers implements RankingState {
  const factory FetchingUsers() = _$FetchingUsers;
}

/// @nodoc
abstract class _$$FetchingErrorCopyWith<$Res> {
  factory _$$FetchingErrorCopyWith(
          _$FetchingError value, $Res Function(_$FetchingError) then) =
      __$$FetchingErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$FetchingErrorCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res>
    implements _$$FetchingErrorCopyWith<$Res> {
  __$$FetchingErrorCopyWithImpl(
      _$FetchingError _value, $Res Function(_$FetchingError) _then)
      : super(_value, (v) => _then(v as _$FetchingError));

  @override
  _$FetchingError get _value => super._value as _$FetchingError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchingError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchingError implements FetchingError {
  const _$FetchingError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RankingState.fetchingError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$FetchingErrorCopyWith<_$FetchingError> get copyWith =>
      __$$FetchingErrorCopyWithImpl<_$FetchingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingUsers,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<UserWithRank> users) userLoaded,
  }) {
    return fetchingError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
  }) {
    return fetchingError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
    required TResult orElse(),
  }) {
    if (fetchingError != null) {
      return fetchingError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FetchingUsers value) fetchingUsers,
    required TResult Function(FetchingError value) fetchingError,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return fetchingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return fetchingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (fetchingError != null) {
      return fetchingError(this);
    }
    return orElse();
  }
}

abstract class FetchingError implements RankingState {
  const factory FetchingError(final String message) = _$FetchingError;

  String get message;
  @JsonKey(ignore: true)
  _$$FetchingErrorCopyWith<_$FetchingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoadedCopyWith<$Res> {
  factory _$$UserLoadedCopyWith(
          _$UserLoaded value, $Res Function(_$UserLoaded) then) =
      __$$UserLoadedCopyWithImpl<$Res>;
  $Res call({List<UserWithRank> users});
}

/// @nodoc
class __$$UserLoadedCopyWithImpl<$Res> extends _$RankingStateCopyWithImpl<$Res>
    implements _$$UserLoadedCopyWith<$Res> {
  __$$UserLoadedCopyWithImpl(
      _$UserLoaded _value, $Res Function(_$UserLoaded) _then)
      : super(_value, (v) => _then(v as _$UserLoaded));

  @override
  _$UserLoaded get _value => super._value as _$UserLoaded;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$UserLoaded(
      users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserWithRank>,
    ));
  }
}

/// @nodoc

class _$UserLoaded implements UserLoaded {
  const _$UserLoaded(final List<UserWithRank> users) : _users = users;

  final List<UserWithRank> _users;
  @override
  List<UserWithRank> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'RankingState.userLoaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoaded &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      __$$UserLoadedCopyWithImpl<_$UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingUsers,
    required TResult Function(String message) fetchingError,
    required TResult Function(List<UserWithRank> users) userLoaded,
  }) {
    return userLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
  }) {
    return userLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingUsers,
    TResult Function(String message)? fetchingError,
    TResult Function(List<UserWithRank> users)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FetchingUsers value) fetchingUsers,
    required TResult Function(FetchingError value) fetchingError,
    required TResult Function(UserLoaded value) userLoaded,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FetchingUsers value)? fetchingUsers,
    TResult Function(FetchingError value)? fetchingError,
    TResult Function(UserLoaded value)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements RankingState {
  const factory UserLoaded(final List<UserWithRank> users) = _$UserLoaded;

  List<UserWithRank> get users;
  @JsonKey(ignore: true)
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
