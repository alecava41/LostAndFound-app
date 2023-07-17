import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/status/failures.dart';

class GeoLocationService {
  const GeoLocationService();

  Future<Either<Failure, Position>> getGeoPosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) return Left(GeolocationServiceFailure());

    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Left(GeolocationPermissionDeniedFailure());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Left(GeolocationPermissionPermanentlyDeniedFailure());
    }

    return Right(await Geolocator.getCurrentPosition());
  }
}