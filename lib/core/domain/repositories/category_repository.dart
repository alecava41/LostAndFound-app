import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import '../../../../core/status/failures.dart';
import '../entities/category.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> getCategories(NoParams params);
}