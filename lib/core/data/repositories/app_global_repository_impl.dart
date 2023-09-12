import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/data/datasources/app_global/adapters/current_country_from_dto.dart';
import 'package:lost_and_found/core/data/repositories/utils.dart';
import 'package:lost_and_found/core/domain/entities/current_country.dart';

import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/network/network_info.dart';

import 'package:lost_and_found/core/status/failures.dart';

import '../../domain/repositories/app_global_repository.dart';
import '../datasources/app_global/app_global_data_source.dart';

class AppGlobalRepositoryImpl implements AppGlobalRepository {
  final NetworkInfo _networkInfo;
  final AppGlobalDataSource _dataSource;

  AppGlobalRepositoryImpl({required NetworkInfo networkInfo, required AppGlobalDataSource appGlobalDataSource})
      : _networkInfo = networkInfo,
        _dataSource = appGlobalDataSource;

  @override
  Future<Either<Failure, CurrentCountry>> getCurrentCountry(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final currentCountry = await _dataSource.getCurrentCountry(params);

        return Right(currentCountry.toDomain());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
