// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) => LoginParams(
      user: json['user'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginParamsToJson(LoginParams instance) =>
    <String, dynamic>{
      'user': instance.user,
      'password': instance.password,
    };
