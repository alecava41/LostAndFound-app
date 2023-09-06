// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$CategoryDto _$$$CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$$CategoryDto(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      icon: json['icon'] as int,
    );

Map<String, dynamic> _$$$CategoryDtoToJson(_$$CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
    };
