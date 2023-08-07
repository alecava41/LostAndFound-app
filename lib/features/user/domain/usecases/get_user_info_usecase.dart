import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUserInfoUseCase implements UseCase<User, NoParams> {
  final UserRepository repository;

  GetUserInfoUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await repository.getUserInfo(params);
  }
}