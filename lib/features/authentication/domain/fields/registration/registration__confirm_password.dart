import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class RegistrationConfirmPasswordField extends Equatable {
  factory RegistrationConfirmPasswordField(String psw, String confirm)
    => RegistrationConfirmPasswordField._(_validateConfirmPasswordField(confirm, psw), psw);

  const RegistrationConfirmPasswordField._(this.value, this._source);

  final Either<Failure, String> value;
  final String _source;

  @override
  List<Object?> get props => [value, _source];
}

Either<Failure, String> _validateConfirmPasswordField(String input, String source) {
  if (input == source || (input == "" && source == "")) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure("Field doesn't match the original password"));
  }
}