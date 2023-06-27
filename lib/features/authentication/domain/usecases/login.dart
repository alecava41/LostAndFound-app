import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/authentication/domain/entities/session.dart';

import '../../../../core/status/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/authentication_repository.dart';

class Login implements UseCase<Session, LoginParams> {
  final AuthenticationRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failure, Session>> call(LoginParams params) async {
    return await repository.login(params);
  }
}

class LoginParams {
  final String? username;
  final String? email;
  final String password;

  LoginParams({
    this.username,
    this.email,
    required this.password
  });
}
