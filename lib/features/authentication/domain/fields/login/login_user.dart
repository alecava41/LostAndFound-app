import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class LoginUserField extends Equatable {
  factory LoginUserField(String input) => LoginUserField._(_validateUserField(input));

  const LoginUserField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateUserField(String input) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  const usernameRegex = r"""^[a-zA-Z0-9]+$""";

  if (RegExp(emailRegex).hasMatch(input) || RegExp(usernameRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure("Invalid username or email."));
  }
}