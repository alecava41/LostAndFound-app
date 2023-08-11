import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/claim/data/models/claim_received/item_dto.dart';
import 'package:lost_and_found/features/claim/data/models/claim_received/user_dto.dart';

part 'claim_received_dto.freezed.dart';
part 'claim_received_dto.g.dart';

@freezed
class ClaimReceivedDto with _$ClaimReceivedDto {
  const factory ClaimReceivedDto({
    required int id,
    required ItemDto item,
    required UserDto user,
    required String status,
    DateTime? date,
    String? answer,
  }) = $ClaimReceivedDto;

  factory ClaimReceivedDto.fromJson(Map<String, dynamic> data) => _$ClaimReceivedDtoFromJson(data);
}