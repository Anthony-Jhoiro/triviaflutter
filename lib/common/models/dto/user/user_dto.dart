import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@freezed
class UserDto with _$UserDto {
  /// {@macro user}
  const factory UserDto({
    required String? pseudo,
    required String? avatar,
    required int? score,
  }) = _UserDto;

  /// Creates a User from Json map
  factory UserDto.fromJson(Map<String, dynamic> data) => _$UserDtoFromJson(data);
}
