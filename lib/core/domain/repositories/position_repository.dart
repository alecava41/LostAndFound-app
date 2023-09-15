import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/get_position_from_address_usecase.dart';

import '../../../../core/status/failures.dart';

abstract class PositionRepository {
  Future<Either<Failure, String>> getAddressFromPosition(GetAddressFromPositionParams params);
  Future<Either<Failure, LatLng>> getPositionFromAddress(GetPositionFromAddressParams params);
}