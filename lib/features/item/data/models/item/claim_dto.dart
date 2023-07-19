import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/item/user_dto.dart';

part 'claim_dto.freezed.dart';
part 'claim_dto.g.dart';

@freezed
class ClaimDto with _$ClaimDto {
  const factory ClaimDto({
    required int id,
    required UserDto user,
    String? answer,
    DateTime? date,
    String? status
  }) = $ClaimDto;

  factory ClaimDto.fromJson(Map<String, dynamic> data) => _$ClaimDtoFromJson(data);
}