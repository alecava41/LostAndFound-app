import 'package:dartz/dartz.dart';

import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/authentication_repository.dart';

class LogoutUseCase implements UseCase<Success, NoParams> {
  final AuthenticationRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<Failure, Success>> call(NoParams params) async {
    return await _repository.logout(params);
  }
}