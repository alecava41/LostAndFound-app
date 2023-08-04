import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';

class DeleteItemUseCase implements UseCase<Success, DeleteItemParams> {
  final ItemRepository repository;

  DeleteItemUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(DeleteItemParams params) async {
    return await repository.deleteItem(params);
  }
}

class DeleteItemParams {
  final int itemId;

  DeleteItemParams({
    required this.itemId
  });
}
