import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../repositories/claim_repository.dart';


class InsertReadClaimUseCase implements UseCase<Success, InsertReadClaimParams> {
  final ClaimRepository repository;

  InsertReadClaimUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(InsertReadClaimParams params) async {
    return await repository.insertReadClaim(params);
  }
}

class InsertReadClaimParams {
  final int claimId;

  InsertReadClaimParams({
    required this.claimId
  });
}
