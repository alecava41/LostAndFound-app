import '../../../../core/datasources/utils.dart';
import '../../../../core/status/success.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/registration.dart';
import '../models/session_model.dart';
import 'auth_client.dart';

abstract class AuthenticationDataSource {
  // Register the user with the given parameters
  Future<Success> register(RegistrationParams params);

  // Login the user with the given credentials
  Future<SessionModel> login(LoginParams params);
}

class AuthenticationDataSourceImpl extends AuthenticationDataSource {
  AuthClient client;

  AuthenticationDataSourceImpl({
    required this.client
  });

  @override
  Future<SessionModel> login(LoginParams params) async {
    return client.login(params).catchError(handleError);
  }

  @override
  Future<Success> register(RegistrationParams params) {
    // TODO: implement register
    throw UnimplementedError();
  }
}