import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class RegistrationPasswordField extends Equatable {
  factory RegistrationPasswordField(String input) => RegistrationPasswordField._(_validatePasswordField(input));

  const RegistrationPasswordField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validatePasswordField(String input) {
  const passwordRegex = r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$""";

  if (RegExp(passwordRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure("Password must contain at least 8 characters, using uppercase, lowercase and numeric characters."));
  }
}