// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$UserItemDto _$$$UserItemDtoFromJson(Map<String, dynamic> json) =>
    _$$UserItemDto(
      id: json['id'] as int,
      title: json['title'] as String,
      claims: json['claims'] as int,
      image: json['image'] as bool,
    );

Map<String, dynamic> _$$$UserItemDtoToJson(_$$UserItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'claims': instance.claims,
      'image': instance.image,
    };
