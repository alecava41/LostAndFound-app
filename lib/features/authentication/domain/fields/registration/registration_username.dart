import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class RegistrationUsernameField extends Equatable {
  factory RegistrationUsernameField(String input, isDuplicate) =>
      RegistrationUsernameField._(_validateUsernameField(input, isDuplicate), isDuplicate);

  const RegistrationUsernameField._(this.value, this.isDuplicate);

  final Either<Failure, String> value;
  final bool isDuplicate;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateUsernameField(String input, bool isDuplicate) {
  if (isDuplicate) {
    return const Left(Failure.validationFailure("Username already used."));
  }

  input = input.trim();
  const usernameRegex = r"""^[a-zA-Z0-9]{1,30}$""";

  if (RegExp(usernameRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure("Username can contain up to 30 alphanumeric digits."));
  }
}
