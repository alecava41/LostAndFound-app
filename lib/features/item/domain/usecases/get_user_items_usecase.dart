import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/user_item.dart';

class GetUserItemsUseCase implements UseCase<List<UserItem>, GetUserItemsParams> {
  final ItemRepository repository;

  GetUserItemsUseCase(this.repository);

  @override
  Future<Either<Failure, List<UserItem>>> call(GetUserItemsParams params) async {
    return await repository.getUserItems(params);
  }
}

class GetUserItemsParams {
  final ItemType type;
  final int last;

  GetUserItemsParams({
    required this.type,
    required this.last
  });
}