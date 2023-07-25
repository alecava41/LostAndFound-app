import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_sent_dto.freezed.dart';
part 'claim_sent_dto.g.dart';

@freezed
class ClaimSentDto with _$ClaimSentDto {
  const factory ClaimSentDto({
    required int id,
    required String status,
    String? answer,
    DateTime? date,
  }) = $ClaimSentDto;

  factory ClaimSentDto.fromJson(Map<String, dynamic> data) => _$ClaimSentDtoFromJson(data);
}