import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:lost_and_found/core/domain/entities/user.dart';
import 'package:lost_and_found/core/repositories/utils.dart';
import 'package:lost_and_found/core/status/exceptions.dart';

import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/usecases/usecase.dart';
import 'package:lost_and_found/features/authentication/data/datasources/authentication_data_source.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/login_use_case.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/registration_use_case.dart';

import '../../../../core/status/success.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../secure_storage/secure_storage.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource _dataSource;
  final SecureStorage _storage;

  AuthenticationRepositoryImpl({
    required AuthenticationDataSource dataSource,
    required SecureStorage storage,
  }) : _storage = storage, _dataSource = dataSource;

  @override
  Future<Either<Failure, Success>> login(LoginParams? params) async {
    try {
      if(await _storage.hasValidSession()) {
        return Right(LoginSuccess());
      }

      final hasCredentials = await _storage.hasCredentials();
      
      if(params == null && await _storage.hasCredentials()) {
        params = await _storage.getCredentials();
      } else if (params == null) {
        throw RecordNotFoundException();
      }

      final session = await _dataSource.login(params);
      log(session.toString());
      await _storage.saveSessionInformation(session);

      if(!hasCredentials) {
        await _storage.saveLoginInformation(params);
      }

      return Right(LoginSuccess());
      
    } on Exception catch(e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> logout(NoParams params) async {
    await _storage.destroySession();
    await _storage.removeCredentials();
    
    return Right(LogoutSuccess());
  }

  @override
  Future<Either<Failure, User>> register(RegistrationParams param) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
