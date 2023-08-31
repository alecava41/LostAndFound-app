import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/status/failures.dart';

class GeoLocationService {
  const GeoLocationService();

  Future<Either<Failure, Position>> getGeoPosition(bool askPermission) async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) return const Left(Failure.geolocationFailure(GeolocationError.serviceNotAvailable));

    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied && askPermission) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const Left(Failure.geolocationFailure(GeolocationError.permissionDenied));
      }
    }

    if (permission == LocationPermission.deniedForever && askPermission) {
      return const Left(Failure.geolocationFailure(GeolocationError.permissionPermanentlyDenied));
    }

    return Right(await Geolocator.getCurrentPosition());
  }
}