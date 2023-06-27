import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/usecases/usecase.dart';
import 'package:lost_and_found/features/authentication/domain/repositories/authentication_repository.dart';

import '../../../../core/domain/entities/user.dart';

class RegisterNewUser implements UseCase<User, RegistrationParams> {
  final AuthenticationRepository repository;

  RegisterNewUser(this.repository);

  @override
  Future<Either<Failure, User>> call(RegistrationParams params) async {
    return await repository.register(params);
  }
}

class RegistrationParams {
  final String email;
  final String username;
  final String name;
  final String surname;
  final String password;

  RegistrationParams(this.email, this.username, this.name, this.surname, this.password);
}
