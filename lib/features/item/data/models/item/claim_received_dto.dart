import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../claim/data/models/claim_received/user_dto.dart';

part 'claim_received_dto.freezed.dart';
part 'claim_received_dto.g.dart';

@freezed
class ClaimReceivedDto with _$ClaimReceivedDto {
  const factory ClaimReceivedDto({
    required int id,
    required UserDto user,
    required String status,
    required String answer,
    DateTime? date,
  }) = $ClaimReceivedDto;

  factory ClaimReceivedDto.fromJson(Map<String, dynamic> data) => _$ClaimReceivedDtoFromJson(data);
}