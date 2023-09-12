import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/entities/current_country.dart';

import '../../status/failures.dart';
import '../usecases/usecase.dart';

abstract class AppGlobalRepository {
  Future<Either<Failure, CurrentCountry>> getCurrentCountry(NoParams params);
}