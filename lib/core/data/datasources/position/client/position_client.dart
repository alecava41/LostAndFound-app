import 'package:dio/dio.dart';
import 'package:lost_and_found/core/data/datasources/position/models/address_dto.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:retrofit/http.dart';

import '../models/position_dto.dart';

part 'position_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api/position")
abstract class PositionClient {
  factory PositionClient(Dio dio, {String baseUrl}) = _PositionClient;

  @GET('')
  Future<AddressDto> getAddressFromPosition(@Query("lat") double lat, @Query("lon") double lon);

  @GET('')
  Future<PositionDto> getPositionFromAddress(@Query("address") String address);
}
