// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$ClaimDto _$$$ClaimDtoFromJson(Map<String, dynamic> json) => _$$ClaimDto(
      id: json['id'] as int,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      answer: json['answer'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$$ClaimDtoToJson(_$$ClaimDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'answer': instance.answer,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
    };
