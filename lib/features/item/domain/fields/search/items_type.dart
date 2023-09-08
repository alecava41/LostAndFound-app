import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class ItemsTypeField extends Equatable {
  factory ItemsTypeField(bool found, bool lost) => ItemsTypeField._(_validateCheckboxesField(found, lost));

  const ItemsTypeField._(this.value);

  final Either<Failure, Pair<bool, bool>> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, Pair<bool, bool>> _validateCheckboxesField(bool found, bool lost) {

  if (found || lost) {
    return Right(Pair(found, lost));
  } else {
    return const Left(Failure.validationFailure());
  }
}