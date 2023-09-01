import 'package:dio/dio.dart';
import 'package:lost_and_found/features/item/data/models/item/item_dto.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../models/claim_received/claim_received_dto.dart';
import '../models/claim_sent/claim_sent_dto.dart';
import '../models/create_claim/create_claim_body.dart';
import '../models/manage_claim/manage_claim_body.dart';

part 'claim_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class ClaimClient {
  factory ClaimClient(Dio dio, {String baseUrl}) = _ClaimClient;

  @GET('/users/items/claims')
  Future<List<ClaimReceivedDto>> getReceivedClaims({@Query("type") String type = "received", @Query("model") String model = "all"});

  @GET('/users/items/claims')
  Future<List<ClaimSentDto>> getSentClaims({@Query("type") String type = "sent", @Query("model") String model = "all"});

  @POST('/items/{itemId}/claims')
  Future<ItemDto> createClaim(@Path() int itemId, @Body() CreateClaimBody body);

  @PATCH('/users/items/{itemId}/claims/{claimId}')
  Future<ItemDto> manageClaim(@Path() int itemId, @Path() int claimId, @Body() ManageClaimBody body);
}
