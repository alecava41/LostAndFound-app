import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';

abstract class BadgeRepository {
  Future<Either<Failure, int>> getUnreadNewsNumber(NoParams params);
  Future<Either<Failure, int>> getUnreadReceivedClaimsNumber(NoParams params);
}
