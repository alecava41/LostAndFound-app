import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';

part 'badge_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class BadgeClient {
  factory BadgeClient(Dio dio, {String baseUrl}) = _BadgeClient;

  @GET('/items/news')
  Future<List<int>> getUnreadNews();

  @GET('/items/claims/ids')
  Future<List<int>> getUnreadReceivedClaims();
}
