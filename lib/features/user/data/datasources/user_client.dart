import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../../domain/usecases/update_locale_usecase.dart';
import '../models/get_user/user_dto.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/users/{userId}')
  Future<UserDto> getUserInfo(
    @Path() int userId,
  );

  @POST('/users/image')
  @MultiPart()
  Future<void> uploadUserImage(@Part() File image);

  @PATCH('/users/password')
  Future<void> updatePassword(@Body() UpdatePasswordParams params);

  @PATCH('/users/locale')
  Future<void> updateLocale(@Body() UpdateLocaleParams params);
}
