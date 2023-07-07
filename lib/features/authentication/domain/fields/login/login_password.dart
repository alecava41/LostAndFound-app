import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class LoginPasswordField extends Equatable {
  factory LoginPasswordField(String input) => LoginPasswordField._(_validatePassword(input));

  const LoginPasswordField._(this.value);

  final Either<ValueFailure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validatePassword(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPasswordLoginInput(failedValue: input),);
  }
}
