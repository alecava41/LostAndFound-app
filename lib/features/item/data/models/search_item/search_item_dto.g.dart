// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$SearchItemDto _$$$SearchItemDtoFromJson(Map<String, dynamic> json) =>
    _$$SearchItemDto(
      id: json['id'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$$SearchItemDtoToJson(_$$SearchItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'user': instance.user,
    };