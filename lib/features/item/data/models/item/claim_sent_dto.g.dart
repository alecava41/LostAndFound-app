// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_sent_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$ClaimSentDto _$$$ClaimSentDtoFromJson(Map<String, dynamic> json) =>
    _$$ClaimSentDto(
      id: json['id'] as int,
      status: json['status'] as String,
      answer: json['answer'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$$ClaimSentDtoToJson(_$$ClaimSentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'answer': instance.answer,
      'date': instance.date?.toIso8601String(),
    };
