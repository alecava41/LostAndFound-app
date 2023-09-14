// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$NewsDto _$$$NewsDtoFromJson(Map<String, dynamic> json) => _$$NewsDto(
      id: json['id'] as int,
      target: NewsInfoDto.fromJson(json['target'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$$NewsDtoToJson(_$$NewsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'target': instance.target,
    };
