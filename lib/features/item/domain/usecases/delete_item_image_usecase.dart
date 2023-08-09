import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';

class DeleteItemImageUseCase implements UseCase<Success, DeleteItemImageParams> {
  final ItemRepository repository;

  DeleteItemImageUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(DeleteItemImageParams params) async {
    return await repository.deleteItemImage(params);
  }
}

class DeleteItemImageParams {
  final int itemId;

  DeleteItemImageParams({
    required this.itemId
  });
}
