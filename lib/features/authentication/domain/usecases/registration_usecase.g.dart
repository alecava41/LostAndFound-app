// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationParams _$RegistrationParamsFromJson(Map<String, dynamic> json) =>
    RegistrationParams(
      email: json['email'] as String,
      token: json['token'] as String?,
      device: json['device'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegistrationParamsToJson(RegistrationParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'token': instance.token,
      'device': instance.device,
    };
