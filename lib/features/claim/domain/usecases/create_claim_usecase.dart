import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/entities/item.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/claim_repository.dart';

class CreateClaimUseCase implements UseCase<Item, CreateClaimParams> {
  final ClaimRepository repository;

  CreateClaimUseCase(this.repository);

  @override
  Future<Either<Failure, Item>> call(CreateClaimParams params) async {
    return await repository.createClaim(params);
  }
}

class CreateClaimParams {
  final int itemId;
  final String answer;

  CreateClaimParams({required this.itemId, required this.answer});
}
