import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/claim_sent.dart';
import '../repositories/claim_repository.dart';

class GetSentClaimsUseCase implements UseCase<List<ClaimSent>, NoParams> {
  final ClaimRepository repository;

  GetSentClaimsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ClaimSent>>> call(NoParams params) async {
    return await repository.getSentClaims(params);
  }
}