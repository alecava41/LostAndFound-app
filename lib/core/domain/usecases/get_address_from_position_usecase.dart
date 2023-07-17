import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/position_repository.dart';

class GetAddressFromPositionUseCase implements UseCase<String, GetAddressFromPositionParams> {
  final PositionRepository repository;

  GetAddressFromPositionUseCase(this.repository);

  @override
  Future<Either<Failure, String>> call(GetAddressFromPositionParams params) async {
    return await repository.getAddressFromPosition(params);
  }
}

class GetAddressFromPositionParams {
  final double lat;
  final double lon;

  GetAddressFromPositionParams({
    required this.lat,
    required this.lon
  });
}