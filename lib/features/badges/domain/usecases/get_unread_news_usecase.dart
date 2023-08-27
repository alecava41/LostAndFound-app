import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/badge_repository.dart';

class GetUnreadNewsUseCase implements UseCase<int, NoParams> {
  final BadgeRepository repository;

  GetUnreadNewsUseCase(this.repository);

  @override
  Future<Either<Failure, int>> call(NoParams params) async {
    return await repository.getUnreadNewsNumber(params);
  }
}