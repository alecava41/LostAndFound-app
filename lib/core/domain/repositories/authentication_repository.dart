import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../usecases/usecase.dart';
import '../../status/success.dart';
import '../../../features/authentication/domain/usecases/login_usecase.dart';
import '../../../features/authentication/domain/usecases/registration_usecase.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Success>> register(RegistrationParams params);
  Future<Either<Failure, Success>> login(LoginParams? params);
  Future<Either<Failure, Success>> logout(NoParams params);
}