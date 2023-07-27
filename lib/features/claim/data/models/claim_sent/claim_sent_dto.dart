import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/claim/data/models/claim_sent/item_dto.dart';

part 'claim_sent_dto.freezed.dart';
part 'claim_sent_dto.g.dart';

@freezed
class ClaimSentDto with _$ClaimSentDto {
  const factory ClaimSentDto({
    required int id,
    required String status,
    required ItemDto item,
    DateTime? date,
    String? answer,
  }) = $ClaimSentDto;

  factory ClaimSentDto.fromJson(Map<String, dynamic> data) => _$ClaimSentDtoFromJson(data);
}