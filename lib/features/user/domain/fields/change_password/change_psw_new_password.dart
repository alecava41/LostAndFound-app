import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class ChangePswNewPasswordField extends Equatable {
  factory ChangePswNewPasswordField(String input) => ChangePswNewPasswordField._(_validateNewPasswordField(input));

  const ChangePswNewPasswordField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateNewPasswordField(String input) {
  const passwordRegex = r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$""";

  if (RegExp(passwordRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}