import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/network/network_info.dart';

import 'package:lost_and_found/core/status/exceptions.dart';

import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/features/authentication/data/datasources/authentication_data_source.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';

import 'package:lost_and_found/features/authentication/domain/usecases/registration_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo _networkInfo;
  final AuthenticationDataSource _dataSource;
  final SecureStorage _storage;

  AuthenticationRepositoryImpl({
    required NetworkInfo networkInfo,
    required AuthenticationDataSource dataSource,
    required SecureStorage storage,
  })  : _networkInfo = networkInfo,
        _storage = storage,
        _dataSource = dataSource;

  @override
  Future<Either<Failure, Success>> login(LoginParams? params) async {
    try {
      if (await _storage.hasValidSession()) {
        return Right(LoginSuccess());
      }

      if (await _networkInfo.isConnected) {
        final hasCredentials = await _storage.hasCredentials();

        if (params == null && await _storage.hasCredentials()) {
          params = await _storage.getCredentials();
        } else if (params == null) {
          throw RecordNotFoundException();
        }

        final session = await _dataSource.login(params);
        await _storage.saveSessionInformation(session);

        if (!hasCredentials) {
          await _storage.saveLoginInformation(params);
        }

        return Right(LoginSuccess());
      } else {
        return Left(NetworkFailure());
      }

    } on Exception catch (e) {
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
  Future<Either<Failure, Success>> register(RegistrationParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        await _dataSource.register(params);
        return Right(RegistrationSuccess());
      } else {
        return Left(NetworkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
