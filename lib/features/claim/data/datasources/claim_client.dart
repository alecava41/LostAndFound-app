import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../models/claim_received/claim_received_dto.dart';
import '../models/claim_sent/claim_sent_dto.dart';

part 'claim_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class ClaimClient {
  factory ClaimClient(Dio dio, {String baseUrl}) = _ClaimClient;

  @GET('/items/claims')
  Future<List<ClaimReceivedDto>> getReceivedClaims(
    @Query("last") int last,
  {@Query("type") String type = "received"}
  );

  @GET('/items/claims')
  Future<List<ClaimSentDto>> getSentClaims(
      @Query("last") int last,
      {@Query("type") String type = "sent"}
      );
}
