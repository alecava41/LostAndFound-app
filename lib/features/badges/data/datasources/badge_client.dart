import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';

part 'badge_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class BadgeClient {
  factory BadgeClient(Dio dio, {String baseUrl}) = _BadgeClient;

  @GET('/users/items/news')
  Future<List<int>> getUnreadNews({@Query("model") String model = "ids"});

  @GET('/users/items/claims')
  Future<List<int>> getUnreadReceivedClaims({@Query("model") String model = "ids"});
}
