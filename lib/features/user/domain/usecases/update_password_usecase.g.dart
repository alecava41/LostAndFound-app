// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePasswordParams _$UpdatePasswordParamsFromJson(
        Map<String, dynamic> json) =>
    UpdatePasswordParams(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$UpdatePasswordParamsToJson(
        UpdatePasswordParams instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
