import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class RegistrationPasswordField extends Equatable {
  factory RegistrationPasswordField(String input) => RegistrationPasswordField._(_validatePasswordField(input));

  const RegistrationPasswordField._(this.value);

  final Either<ValueFailure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validatePasswordField(String input) {
  const passwordRegex = r"""^.{8,30}$""";

  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPasswordRegistrationInput(failedValue: input),);
  }
}