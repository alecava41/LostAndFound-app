import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_item_dto.freezed.dart';

part 'user_item_dto.g.dart';

@freezed
class UserItemDto with _$UserItemDto {
  const factory UserItemDto({
    required int id,
    required String title,
    required int claims,
    required int approvedClaims,
    required bool image,
  }) = $UserItemDto;

  factory UserItemDto.fromJson(Map<String, dynamic> data) => _$UserItemDtoFromJson(data);
}
