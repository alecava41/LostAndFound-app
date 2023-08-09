import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class CategoryField extends Equatable {
  factory CategoryField(int id) => CategoryField._(_validateCategoryField(id));

  const CategoryField._(this.value);

  final Either<Failure, int> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, int> _validateCategoryField(int id) {
  if (id > -1) {
    return Right(id);
  } else {
    return const Left(Failure.validationFailure("Select a category."));
  }
}