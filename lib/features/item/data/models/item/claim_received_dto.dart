import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/item/user_dto.dart';

part 'claim_received_dto.freezed.dart';
part 'claim_received_dto.g.dart';

@freezed
class ClaimReceivedDto with _$ClaimReceivedDto {
  const factory ClaimReceivedDto({
    required int id,
    required UserDto user,
    required String status,
    String? answer,
    DateTime? date,
  }) = $ClaimReceivedDto;

  factory ClaimReceivedDto.fromJson(Map<String, dynamic> data) => _$ClaimReceivedDtoFromJson(data);
}