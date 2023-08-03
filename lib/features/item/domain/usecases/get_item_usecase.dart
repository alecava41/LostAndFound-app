import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/item.dart';

class GetItemUseCase implements UseCase<Item, GetItemParams> {
  final ItemRepository repository;

  GetItemUseCase(this.repository);

  @override
  Future<Either<Failure, Item>> call(GetItemParams params) async {
    return await repository.getItem(params);
  }
}

class GetItemParams {
  final int id;

  GetItemParams({
    required this.id,});
}