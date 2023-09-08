import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class ChangePswOldPasswordField extends Equatable {
  factory ChangePswOldPasswordField(String input, bool isNotActualPassword) => ChangePswOldPasswordField._(_validateOldPasswordField(input, isNotActualPassword), isNotActualPassword);

  const ChangePswOldPasswordField._(this.value, this.isNotActualPassword);

  final Either<Failure, String> value;
  final bool isNotActualPassword;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateOldPasswordField(String input, bool isNotActualPassword) {
  if (isNotActualPassword) {
    return const Left(Failure.recordNotFoundFailure());
  }

  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}