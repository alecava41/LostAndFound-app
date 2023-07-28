import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/item/category_dto.dart';
import 'package:lost_and_found/features/item/data/models/item/claim_received_dto.dart';
import 'package:lost_and_found/features/item/data/models/item/claim_sent_dto.dart';
import 'package:lost_and_found/features/item/data/models/item/position_dto.dart';
import 'package:lost_and_found/features/item/data/models/item/user_dto.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto({
    required int id,
    required String title,
    required String type,
    required String address,
    required DateTime date,
    required UserDto user,
    required CategoryDto category,
    required String? question,
    List<ClaimReceivedDto>? claims,
    ClaimSentDto? userClaim,
    PositionDto? position,
  }) = $ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> data) => _$ItemDtoFromJson(data);
}