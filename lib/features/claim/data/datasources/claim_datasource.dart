import 'package:lost_and_found/features/claim/data/models/create_claim/create_claim_body.dart';
import 'package:lost_and_found/features/claim/data/models/manage_claim/manage_claim_body.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../../../item/data/models/item/item_dto.dart';
import '../../domain/usecases/get_received_claims_usecase.dart';
import '../models/claim_received/claim_received_dto.dart';
import '../models/claim_sent/claim_sent_dto.dart';
import 'claim_client.dart';

abstract class ClaimDataSource {
  Future<List<ClaimReceivedDto>> getReceivedClaims(GetReceivedClaimsParams params);
  Future<List<ClaimSentDto>> getSentClaims(GetSentClaimsParams params);
  Future<ItemDto> createClaim(CreateClaimParams params);
  Future<ItemDto> manageClaim(ManageClaimParams params, int userId);
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

  @override
  Future<ItemDto> createClaim(CreateClaimParams params) {
    return _client.createClaim(params.itemId, CreateClaimBody(answer: params.answer)).catchError(handleError<ItemDto>);
  }

  @override
  Future<ItemDto> manageClaim(ManageClaimParams params, int userId) {
    return _client.manageClaim(userId, params.itemId, params.claimId, ManageClaimBody(status: params.status.name))
        .catchError(handleError<ItemDto>);
  }
}
