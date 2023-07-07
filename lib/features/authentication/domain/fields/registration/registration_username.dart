import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/value_failure.dart';

class RegistrationUsernameField extends Equatable {
  factory RegistrationUsernameField(String input, isDuplicate) =>
      RegistrationUsernameField._(_validateUsernameField(input, isDuplicate), isDuplicate);

  const RegistrationUsernameField._(this.value, this.isDuplicate);

  final Either<ValueFailure, String> value;
  final bool isDuplicate;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validateUsernameField(String input, bool isDuplicate) {
  if (isDuplicate) {
    return left(ValueFailure.duplicateUsernameRegistrationInput(failedValue: input));
  }
  
  const usernameRegex = r"""^[a-zA-Z0-9]{1,30}$""";

  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidEmailRegistrationInput(failedValue: input),
    );
  }
}
