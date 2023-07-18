import 'package:lost_and_found/core/data/datasources/utils.dart';

import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/registration_usecase.dart';
import '../models/session_model.dart';
import 'auth_client.dart';

abstract class AuthenticationDataSource {
  // Register the user with the given parameters
  Future<void> register(RegistrationParams params);

  // Login the user with the given credentials
  Future<SessionModel> login(LoginParams params);
}

class AuthenticationDataSourceImpl extends AuthenticationDataSource {
  final AuthClient _client;

  AuthenticationDataSourceImpl({
    required AuthClient client
  }) : _client = client;

  @override
  Future<SessionModel> login(LoginParams params) async {
    return _client.login(params).catchError(handleError<SessionModel>);
  }

  @override
  Future<void> register(RegistrationParams params) {
    return _client.register(params).catchError(handleError<void>);
  }
}