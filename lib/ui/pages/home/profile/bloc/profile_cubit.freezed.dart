// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProfile,
    required TResult Function(User user) profileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(ProfileLoaded value) profileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatusCopyWith<$Res> {
  factory $ProfileStatusCopyWith(
          ProfileStatus value, $Res Function(ProfileStatus) then) =
      _$ProfileStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStatusCopyWithImpl<$Res>
    implements $ProfileStatusCopyWith<$Res> {
  _$ProfileStatusCopyWithImpl(this._value, this._then);

  final ProfileStatus _value;
  // ignore: unused_field
  final $Res Function(ProfileStatus) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$ProfileStatusCopyWithImpl<$Res>
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
    return 'ProfileStatus.initial()';
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
    required TResult Function() loadingProfile,
    required TResult Function(User user) profileLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
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
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(ProfileLoaded value) profileLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileStatus {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingProfileCopyWith<$Res> {
  factory _$$LoadingProfileCopyWith(
          _$LoadingProfile value, $Res Function(_$LoadingProfile) then) =
      __$$LoadingProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProfileCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res>
    implements _$$LoadingProfileCopyWith<$Res> {
  __$$LoadingProfileCopyWithImpl(
      _$LoadingProfile _value, $Res Function(_$LoadingProfile) _then)
      : super(_value, (v) => _then(v as _$LoadingProfile));

  @override
  _$LoadingProfile get _value => super._value as _$LoadingProfile;
}

/// @nodoc

class _$LoadingProfile implements LoadingProfile {
  const _$LoadingProfile();

  @override
  String toString() {
    return 'ProfileStatus.loadingProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProfile,
    required TResult Function(User user) profileLoaded,
  }) {
    return loadingProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
  }) {
    return loadingProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(ProfileLoaded value) profileLoaded,
  }) {
    return loadingProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
  }) {
    return loadingProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile(this);
    }
    return orElse();
  }
}

abstract class LoadingProfile implements ProfileStatus {
  const factory LoadingProfile() = _$LoadingProfile;
}

/// @nodoc
abstract class _$$ProfileLoadedCopyWith<$Res> {
  factory _$$ProfileLoadedCopyWith(
          _$ProfileLoaded value, $Res Function(_$ProfileLoaded) then) =
      __$$ProfileLoadedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$ProfileLoadedCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res>
    implements _$$ProfileLoadedCopyWith<$Res> {
  __$$ProfileLoadedCopyWithImpl(
      _$ProfileLoaded _value, $Res Function(_$ProfileLoaded) _then)
      : super(_value, (v) => _then(v as _$ProfileLoaded));

  @override
  _$ProfileLoaded get _value => super._value as _$ProfileLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ProfileLoaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ProfileLoaded implements ProfileLoaded {
  const _$ProfileLoaded(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileStatus.profileLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoaded &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ProfileLoadedCopyWith<_$ProfileLoaded> get copyWith =>
      __$$ProfileLoadedCopyWithImpl<_$ProfileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProfile,
    required TResult Function(User user) profileLoaded,
  }) {
    return profileLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
  }) {
    return profileLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProfile,
    TResult Function(User user)? profileLoaded,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(ProfileLoaded value) profileLoaded,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
  }) {
    return profileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(ProfileLoaded value)? profileLoaded,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileStatus {
  const factory ProfileLoaded(final User user) = _$ProfileLoaded;

  User get user;
  @JsonKey(ignore: true)
  _$$ProfileLoadedCopyWith<_$ProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
