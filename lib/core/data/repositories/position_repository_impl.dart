import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/position_repository.dart';
import '../datasources/position/position_data_source.dart';

class PositionRepositoryImpl implements PositionRepository {
  final NetworkInfo _networkInfo;
  final PositionDataSource _dataSource;

  PositionRepositoryImpl(
      {required PositionDataSource dataSource,
      required NetworkInfo networkInfo,})
      : _networkInfo = networkInfo,
        _dataSource = dataSource;

  @override
  Future<Either<Failure, String>> getAddressFromPosition(GetAddressFromPositionParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final address = await _dataSource.getAddressFromPosition(params);

        return Right(address.address);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
