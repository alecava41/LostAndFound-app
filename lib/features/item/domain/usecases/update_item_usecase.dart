import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';

part 'update_item_usecase.g.dart';

class UpdateItemUseCase implements UseCase<Success, UpdateItemParams> {
  final ItemRepository repository;

  UpdateItemUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UpdateItemParams params) async {
    return await repository.updateItem(params);
  }
}

@JsonSerializable(includeIfNull: false)
class UpdateItemParams {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final int itemId;

  final String title;
  final Position position;
  final int category;
  final String? question;

  UpdateItemParams({
    required this.itemId,
    required this.title,
    required this.position,
    required this.category,
    required this.question,
  });

  Map<String,dynamic> toJson() => _$UpdateItemParamsToJson(this);
  factory UpdateItemParams.fromJson(Map<String,dynamic> data) => _$UpdateItemParamsFromJson(data);

}

@JsonSerializable()
class Position {
  final double X;
  final double Y;

  Position({required this.X, required this.Y});

  Map<String,dynamic> toJson() => _$PositionToJson(this);
  factory Position.fromJson(Map<String,dynamic> data) => _$PositionFromJson(data);

}
