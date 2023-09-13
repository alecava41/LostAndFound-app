import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    required String username,
    bool? image
  }) = $UserDto;

  factory UserDto.fromJson(Map<String,dynamic> data) => _$UserDtoFromJson(data);
}