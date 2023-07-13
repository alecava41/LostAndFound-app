import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../usecases/login_usecase.dart';
import '../usecases/registration_usecase.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Success>> register(RegistrationParams params);
  Future<Either<Failure, Success>> login(LoginParams? params);
  Future<Either<Failure, Success>> logout(NoParams params);
}