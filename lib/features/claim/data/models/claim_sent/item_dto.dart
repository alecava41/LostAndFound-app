import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDto with _$ItemDto {
  const factory ItemDto({
    required int id,
    required String title,
    required bool image,
  }) = $ItemDto;

  factory ItemDto.fromJson(Map<String, dynamic> data) => _$ItemDtoFromJson(data);
}