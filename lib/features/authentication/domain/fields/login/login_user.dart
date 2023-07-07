import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class LoginUserField extends Equatable {
  factory LoginUserField(String input) => LoginUserField._(_validateUserField(input));

  const LoginUserField._(this.value);

  final Either<ValueFailure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validateUserField(String input) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  const usernameRegex = r"""^[a-zA-Z0-9]+$""";

  if (RegExp(emailRegex).hasMatch(input) || RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidUserLoginInput(failedValue: input),
    );
  }
}