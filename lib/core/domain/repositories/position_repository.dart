import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';

import '../../../../core/status/failures.dart';

abstract class PositionRepository {
  Future<Either<Failure, String>> getAddressFromPosition(GetAddressFromPositionParams params);
}