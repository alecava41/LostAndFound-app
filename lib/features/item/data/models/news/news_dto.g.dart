// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$NewsDto _$$$NewsDtoFromJson(Map<String, dynamic> json) => _$$NewsDto(
      id: json['id'] as int,
      datetime: json['datetime'] as String,
      subject: SubjectDto.fromJson(json['subject'] as Map<String, dynamic>),
      target: TargetDto.fromJson(json['target'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$$NewsDtoToJson(_$$NewsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime': instance.datetime,
      'subject': instance.subject,
      'target': instance.target,
    };
