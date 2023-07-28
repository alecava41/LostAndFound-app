import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../entities/claim_sent.dart';
import '../usecases/get_received_claims_usecase.dart';
import '../usecases/get_sent_claims_usecase.dart';

abstract class ClaimRepository {
  Future<Either<Failure, List<ClaimReceived>>> getReceivedClaims(GetReceivedClaimsParams params);
  Future<Either<Failure, List<ClaimSent>>> getSentClaims(GetSentClaimsParams params);
  Future<Either<Failure, Success>> createClaim(CreateClaimParams params);
  Future<Either<Failure, Success>> manageClaim(ManageClaimParams params);
}