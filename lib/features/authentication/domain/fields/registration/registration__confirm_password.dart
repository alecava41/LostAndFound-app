import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class RegistrationConfirmPasswordField extends Equatable {
  factory RegistrationConfirmPasswordField(String psw, String confirm)
    => RegistrationConfirmPasswordField._(_validateConfirmPasswordField(confirm, psw), psw);

  const RegistrationConfirmPasswordField._(this.value, this._source);

  final Either<ValueFailure, String> value;
  final String _source;

  @override
  List<Object?> get props => [value, _source];
}

Either<ValueFailure, String> _validateConfirmPasswordField(String input, String source) {
  if (input == source || (input == "" && source == "")) {
    return right(input);
  } else {
    return left(ValueFailure.invalidConfirmPasswordRegistrationInput(failedValue: input),);
  }
}