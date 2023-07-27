// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_received_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$ClaimReceivedDto _$$$ClaimReceivedDtoFromJson(Map<String, dynamic> json) =>
    _$$ClaimReceivedDto(
      id: json['id'] as int,
      item: ItemDto.fromJson(json['item'] as Map<String, dynamic>),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$$ClaimReceivedDtoToJson(_$$ClaimReceivedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
      'user': instance.user,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'answer': instance.answer,
    };
