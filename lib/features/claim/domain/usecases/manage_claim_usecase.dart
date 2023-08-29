import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/entities/claim_status.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../item/domain/entities/item.dart';
import '../repositories/claim_repository.dart';

class ManageClaimUseCase implements UseCase<Item, ManageClaimParams> {
  final ClaimRepository repository;

  ManageClaimUseCase(this.repository);

  @override
  Future<Either<Failure, Item>> call(ManageClaimParams params) async {
    return await repository.manageClaim(params);
  }
}

class ManageClaimParams {
  final int itemId;
  final int claimId;
  final ClaimStatus status;

  ManageClaimParams({
    required this.itemId,
    required this.claimId,
    required this.status
  });
}
