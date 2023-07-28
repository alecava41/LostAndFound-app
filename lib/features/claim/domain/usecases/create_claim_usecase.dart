import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../repositories/claim_repository.dart';

class CreateClaimUseCase implements UseCase<Success, CreateClaimParams> {
  final ClaimRepository repository;

  CreateClaimUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(CreateClaimParams params) async {
    return await repository.createClaim(params);
  }
}

class CreateClaimParams {
  final int itemId;
  final String answer;

  CreateClaimParams({required this.itemId, required this.answer});
}
