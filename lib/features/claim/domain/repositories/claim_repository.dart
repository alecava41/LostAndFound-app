import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';

import '../../../../core/status/failures.dart';
import '../entities/claim_sent.dart';
import '../usecases/get_received_claims_usecase.dart';
import '../usecases/get_sent_claims_usecase.dart';

abstract class ClaimRepository {
  Future<Either<Failure, List<ClaimReceived>>> getReceivedClaims(GetReceivedClaimsParams params);
  Future<Either<Failure, List<ClaimSent>>> getSentClaims(GetSentClaimsParams params);
  // Future<Either<Failure, List<News>>> getSentClaims(GetUserNotificationsParams params);
  // Future<Either<Failure, List<SearchItem>>> createClaim(SearchItemsParams params);
}