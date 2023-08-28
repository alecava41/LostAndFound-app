// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_notification_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendNotificationBody _$SendNotificationBodyFromJson(
        Map<String, dynamic> json) =>
    SendNotificationBody(
      receiver: json['receiver'] as int,
      room: json['room'] as String,
      item: json['item'] as int,
    );

Map<String, dynamic> _$SendNotificationBodyToJson(
        SendNotificationBody instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'room': instance.room,
      'item': instance.item,
    };
