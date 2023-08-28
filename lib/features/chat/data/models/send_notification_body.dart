import 'package:json_annotation/json_annotation.dart';

part 'send_notification_body.g.dart';

@JsonSerializable()
class SendNotificationBody {
  final int receiver;
  final String room;
  final int item;

  SendNotificationBody({required this.receiver, required this.room, required this.item});

  factory SendNotificationBody.fromJson(Map<String, dynamic> data) => _$SendNotificationBodyFromJson(data);

  Map<String, dynamic> toJson() => _$SendNotificationBodyToJson(this);
}
