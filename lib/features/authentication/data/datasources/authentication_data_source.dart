import 'package:lost_and_found/core/datasources/utils.dart';

import '../../../../core/status/success.dart';
import '../../domain/usecases/login_use_case.dart';
import '../../domain/usecases/registration_use_case.dart';
import '../models/session_model.dart';
import 'auth_client.dart';

abstract class AuthenticationDataSource {
  // Register the user with the given parameters
  Future<Success> register(RegistrationParams params);

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
  Future<Success> register(RegistrationParams params) {
    // TODO: implement register
    throw UnimplementedError();
  }
}