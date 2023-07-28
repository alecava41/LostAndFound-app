// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$ItemDto _$$$ItemDtoFromJson(Map<String, dynamic> json) => _$$ItemDto(
      id: json['id'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      address: json['address'] as String,
      date: DateTime.parse(json['date'] as String),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      question: json['question'] as String,
      claims: (json['claims'] as List<dynamic>?)
          ?.map((e) => ClaimReceivedDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      userClaim: json['userClaim'] == null
          ? null
          : ClaimSentDto.fromJson(json['userClaim'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : PositionDto.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$$ItemDtoToJson(_$$ItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'address': instance.address,
      'date': instance.date.toIso8601String(),
      'user': instance.user,
      'category': instance.category,
      'question': instance.question,
      'claims': instance.claims,
      'userClaim': instance.userClaim,
      'position': instance.position,
    };
