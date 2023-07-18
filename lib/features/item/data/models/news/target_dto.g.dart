// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$TargetDto _$$$TargetDtoFromJson(Map<String, dynamic> json) => _$$TargetDto(
      id: json['id'] as int,
      title: json['title'] as String?,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$$TargetDtoToJson(_$$TargetDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'user': instance.user,
    };
