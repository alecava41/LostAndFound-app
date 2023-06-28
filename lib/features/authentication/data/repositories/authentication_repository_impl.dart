import 'package:dartz/dartz.dart';

import 'package:lost_and_found/core/domain/entities/user.dart';
import 'package:lost_and_found/core/status/exceptions.dart';

import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/features/authentication/data/datasources/authentication_data_source.dart';
import 'package:lost_and_found/features/authentication/domain/entities/session.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/login.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/registration.dart';

import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;

  AuthenticationRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, Session>> login(LoginParams params) async {
    try {
      final session = await dataSource.login(params);
      // save jwt token somewhere (to allow correct behavior of interceptor)
      return Right(session);
    } on InternalServerException {
      return Left(InternalServerFailure());
    } on MalformedRequestException {
      return Left(MalformedRequestFailure());
    } on ValidationException {
      return Left(ValidationFailure());
    } on RecordNotFoundException {
      return Left(RecordNotFoundFailure());
    } on UserNotAuthorizedException {
      return Left(UserNotAuthorizedFailure());
    }
  }

  @override
  Future<Either<Failure, User>> register(RegistrationParams param) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
