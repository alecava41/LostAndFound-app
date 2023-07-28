import 'package:json_annotation/json_annotation.dart';

part 'create_claim_body.g.dart';

@JsonSerializable()
class CreateClaimBody {
  final String answer;

  CreateClaimBody({
    required this.answer,
  });

  factory CreateClaimBody.fromJson(Map<String,dynamic> data) => _$CreateClaimBodyFromJson(data);

  Map<String,dynamic> toJson() => _$CreateClaimBodyToJson(this);
}
