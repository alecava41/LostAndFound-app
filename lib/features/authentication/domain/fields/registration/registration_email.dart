import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class RegistrationEmailField extends Equatable {
  factory RegistrationEmailField(String input, bool isDuplicate) => RegistrationEmailField._(_validateEmailField(input, isDuplicate), isDuplicate);

  const RegistrationEmailField._(this.value, this.isDuplicate);

  final Either<ValueFailure, String> value;
  final bool isDuplicate;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validateEmailField(String input, bool isDuplicate) {
  if (isDuplicate) {
    return left(ValueFailure.duplicateEmailRegistrationInput(failedValue: input));
  }

  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailRegistrationInput(failedValue: input),);
  }
}