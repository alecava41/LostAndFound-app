import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../repositories/position_repository.dart';

class GetPositionFromAddressUseCase implements UseCase<LatLng, GetPositionFromAddressParams> {
  final PositionRepository repository;

  GetPositionFromAddressUseCase(this.repository);

  @override
  Future<Either<Failure, LatLng>> call(GetPositionFromAddressParams params) async {
    return await repository.getPositionFromAddress(params);
  }
}

class GetPositionFromAddressParams {
  final String address;

  GetPositionFromAddressParams({
    required this.address,
  });
}