import '../../domain/entities/session.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session_model.g.dart';

@JsonSerializable()
class SessionModel extends Session {
  SessionModel({
    required String jwt,
    required int user,
  }) : super(jwt: jwt, user: user);

  factory SessionModel.fromJson(Map<String,dynamic> data) => _$SessionModelFromJson(data);

  Map<String,dynamic> toJson() => _$SessionModelToJson(this);
}
