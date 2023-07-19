import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/data/datasources/category/adapters/category_from_dto.dart';
import 'package:lost_and_found/core/domain/entities/category.dart';
import 'package:lost_and_found/core/domain/repositories/category_repository.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/category/category_data_source.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final NetworkInfo _networkInfo;
  final CategoryDataSource _dataSource;

  CategoryRepositoryImpl(
      {required CategoryDataSource dataSource,
      required NetworkInfo networkInfo,})
      : _networkInfo = networkInfo,
        _dataSource = dataSource;

  @override
  Future<Either<Failure, List<Category>>> getCategories(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final categories = await _dataSource.getCategories(params);
        final domainCategories = categories.map((category) => category.toDomain()).toList();

        return Right(domainCategories);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
