import 'package:json_annotation/json_annotation.dart';

part 'manage_claim_body.g.dart';

@JsonSerializable()
class ManageClaimBody {
  final String status;

  ManageClaimBody({
    required this.status,
  });

  factory ManageClaimBody.fromJson(Map<String,dynamic> data) => _$ManageClaimBodyFromJson(data);

  Map<String,dynamic> toJson() => _$ManageClaimBodyToJson(this);
}
