import 'package:json_annotation/json_annotation.dart';

part 'session_model.g.dart';

@JsonSerializable()
class SessionModel {
  final String token;
  final int user;
  final int expire;
  final String username;
  final String email;

  SessionModel({
    required this.token,
    required this.user,
    required this.expire,
    required this.username,
    required this.email,
  });

  factory SessionModel.fromJson(Map<String,dynamic> data) => _$SessionModelFromJson(data);

  Map<String,dynamic> toJson() => _$SessionModelToJson(this);
}
