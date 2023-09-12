import 'package:dio/dio.dart';
import 'package:lost_and_found/core/data/datasources/app_global/models/ip_details_dto.dart';
import 'package:retrofit/http.dart';


part 'app_global_client.g.dart';

@RestApi(baseUrl: "")
abstract class AppGlobalClient {
  factory AppGlobalClient(Dio dio, {String baseUrl}) = _AppGlobalClient;

  @GET('http://ip-api.com/json')
  Future<IpDetailsDto> getCurrentCountryInfo();
}
