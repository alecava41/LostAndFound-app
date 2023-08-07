import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/success.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/domain/repositories/authentication_repository.dart';

class LogoutUseCase implements UseCase<Success, NoParams> {
  final AuthenticationRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<Failure, Success>> call(NoParams params) async {
    return await _repository.logout(params);
  }
}
