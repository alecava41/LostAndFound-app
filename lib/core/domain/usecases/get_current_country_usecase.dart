import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/entities/current_country.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/app_global_repository.dart';

class GetCurrentCountryUseCase implements UseCase<CurrentCountry, NoParams> {
  final AppGlobalRepository repository;

  GetCurrentCountryUseCase(this.repository);

  @override
  Future<Either<Failure, CurrentCountry>> call(NoParams params) async {
    return await repository.getCurrentCountry(params);
  }
}