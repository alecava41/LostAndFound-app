import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_response_dto.freezed.dart';
part 'item_response_dto.g.dart';

@freezed
class ItemResponseDto with _$ItemResponseDto {
  const factory ItemResponseDto({
    required int id
  }) = $ItemResponseDto;

  factory ItemResponseDto.fromJson(Map<String, dynamic> data) => _$ItemResponseDtoFromJson(data);
}