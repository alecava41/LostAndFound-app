import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';

class SolveItemUseCase implements UseCase<Success, SolveItemParams> {
  final ItemRepository repository;

  SolveItemUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(SolveItemParams params) async {
    return await repository.solveItem(params);
  }
}

class SolveItemParams {
  final int itemId;

  SolveItemParams({
    required this.itemId
  });
}
