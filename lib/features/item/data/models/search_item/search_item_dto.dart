import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/search_item/user_dto.dart';

part 'search_item_dto.freezed.dart';
part 'search_item_dto.g.dart';

@freezed
class SearchItemDto with _$SearchItemDto {
  const factory SearchItemDto({
    required int id,
    required String title,
    required String type,
    bool? image,
    required UserDto user,
    required DateTime date,
    required double distance
  }) = $SearchItemDto;

  factory SearchItemDto.fromJson(Map<String, dynamic> data) => _$SearchItemDtoFromJson(data);
}