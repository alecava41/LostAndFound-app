import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/entities/user.dart';
import '../entities/session.dart';
import '../usecases/login.dart';
import '../usecases/registration.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> register(RegistrationParams param);
  Future<Either<Failure, Session>> login(LoginParams param);
}