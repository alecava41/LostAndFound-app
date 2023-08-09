import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/status/failures.dart';

class PositionField extends Equatable {
  factory PositionField(LatLng pos) => PositionField._(_validatePositionField(pos));

  const PositionField._(this.value);

  final Either<Failure, LatLng> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, LatLng> _validatePositionField(LatLng pos) {
  if (pos != const LatLng(0, 0)) {
    return Right(pos);
  } else {
    return const Left(Failure.validationFailure("Select the position of the item."));
  }
}