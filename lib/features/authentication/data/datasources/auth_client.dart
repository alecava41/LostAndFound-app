import 'package:lost_and_found/features/authentication/domain/usecases/login_use_case.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../domain/usecases/registration_use_case.dart';
import '../models/session_model.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: "http://localhost:5000/auth")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;
  
  @POST("/register")
  Future<void> register(@Body() RegistrationParams params);

  @POST("/login")
  Future<SessionModel> login(@Body() LoginParams params);
}