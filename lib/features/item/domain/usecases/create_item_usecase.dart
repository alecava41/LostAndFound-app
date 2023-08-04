import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/user_item.dart';

part 'create_item_usecase.g.dart';

class CreateItemUseCase implements UseCase<int, CreateItemParams> {
  final ItemRepository repository;

  CreateItemUseCase(this.repository);

  @override
  Future<Either<Failure, int>> call(CreateItemParams params) async {
    return await repository.createItem(params);
  }
}

@JsonSerializable(includeIfNull: false)
class CreateItemParams {
  final String title;
  final ItemType type;
  final Position position;
  final int category;
  final String? question;

  CreateItemParams({
    required this.title,
    required this.type,
    required this.position,
    required this.category,
    required this.question,
  });

  Map<String,dynamic> toJson() => _$CreateItemParamsToJson(this);
  factory CreateItemParams.fromJson(Map<String,dynamic> data) => _$CreateItemParamsFromJson(data);

}

@JsonSerializable()
class Position {
  final double X;
  final double Y;

  Position({required this.X, required this.Y});

  Map<String,dynamic> toJson() => _$PositionToJson(this);
  factory Position.fromJson(Map<String,dynamic> data) => _$PositionFromJson(data);
}
