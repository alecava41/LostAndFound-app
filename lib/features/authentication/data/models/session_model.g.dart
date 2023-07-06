// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) => SessionModel(
      token: json['token'] as String,
      user: json['user'] as int,
      expire: json['expire'] as int,
    );

Map<String, dynamic> _$SessionModelToJson(SessionModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'expire': instance.expire,
    };
