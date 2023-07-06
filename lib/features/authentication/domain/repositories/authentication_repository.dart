import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/usecases/usecase.dart';

import '../../../../core/domain/entities/user.dart';
import '../../../../core/status/success.dart';
import '../usecases/login_use_case.dart';
import '../usecases/registration_use_case.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> register(RegistrationParams params);
  Future<Either<Failure, Success>> login(LoginParams? params);
  Future<Either<Failure, Success>> logout(NoParams params);
}