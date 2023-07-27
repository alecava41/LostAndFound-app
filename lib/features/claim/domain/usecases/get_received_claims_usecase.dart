import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/claim_repository.dart';

class GetReceivedClaimsUseCase implements UseCase<List<ClaimReceived>, GetReceivedClaimsParams> {
  final ClaimRepository repository;

  GetReceivedClaimsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ClaimReceived>>> call(GetReceivedClaimsParams params) async {
    return await repository.getReceivedClaims(params);
  }
}

class GetReceivedClaimsParams {
  final int last;

  GetReceivedClaimsParams({
    required this.last});
}