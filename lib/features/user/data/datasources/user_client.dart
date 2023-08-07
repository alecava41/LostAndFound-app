import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../models/get_user/user_dto.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/users/{userId}')
  Future<UserDto> getUserInfo(
    @Path() int userId,
  );

  @POST('/users/{userId}/image')
  @MultiPart()
  Future<void> uploadUserImage(
      @Path("userId") int userId,
      @Part() File image,
      );

  @PATCH('/users/{userId}/password')
  Future<void> updatePassword(
      @Path() int userId,
      @Body() UpdatePasswordParams params
      );
}
