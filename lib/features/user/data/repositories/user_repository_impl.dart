import 'package:dartz/dartz.dart';

import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/status/exceptions.dart';

import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/user/data/adapters/user_from_dto.dart';

import 'package:lost_and_found/features/user/domain/entities/user.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/upload_user_image_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final NetworkInfo _networkInfo;
  final UserDataSource _dataSource;
  final SecureStorage _storage;

  UserRepositoryImpl(
      {required UserDataSource dataSource, required SecureStorage storage, required NetworkInfo networkInfo})
      : _networkInfo = networkInfo,
        _dataSource = dataSource,
        _storage = storage;

  @override
  Future<Either<Failure, User>> getUserInfo(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        if (session == null) {
          throw UserNotAuthorizedException();
        }

        final userDto = await _dataSource.getUserInfo(params, session.user);

        return Right(userDto.toDomain());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> uploadUserImage(UploadUserImageParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        await _dataSource.uploadUserImage(params);
        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> updatePassword(UpdatePasswordParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        await _dataSource.updatePassword(params);
        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
