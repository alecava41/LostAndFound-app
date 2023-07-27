import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/claim_sent.dart';
import '../repositories/claim_repository.dart';

class GetSentClaimsUseCase implements UseCase<List<ClaimSent>, GetSentClaimsParams> {
  final ClaimRepository repository;

  GetSentClaimsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ClaimSent>>> call(GetSentClaimsParams params) async {
    return await repository.getSentClaims(params);
  }
}

class GetSentClaimsParams {
  final int last;

  GetSentClaimsParams({required this.last});
}
