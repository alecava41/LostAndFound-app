import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../../domain/usecases/get_received_claims_usecase.dart';
import '../models/claim_received/claim_received_dto.dart';
import '../models/claim_sent/claim_sent_dto.dart';
import 'claim_client.dart';

abstract class ClaimDataSource {
  Future<List<ClaimReceivedDto>> getReceivedClaims(GetReceivedClaimsParams params);
  Future<List<ClaimSentDto>> getSentClaims(GetSentClaimsParams params);
}

class ClaimDataSourceImpl implements ClaimDataSource {
  final ClaimClient _client;

  ClaimDataSourceImpl(this._client);

  @override
  Future<List<ClaimReceivedDto>> getReceivedClaims(GetReceivedClaimsParams params) {
    return _client.getReceivedClaims(params.last).catchError(handleError<List<ClaimReceivedDto>>);
  }

  @override
  Future<List<ClaimSentDto>> getSentClaims(GetSentClaimsParams params) {
    return _client.getSentClaims(params.last).catchError(handleError<List<ClaimSentDto>>);
  }
}
