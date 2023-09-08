import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class ChangePswConfirmPasswordField extends Equatable {
  factory ChangePswConfirmPasswordField(String psw, String confirm)
    => ChangePswConfirmPasswordField._(_validateConfirmPasswordField(confirm, psw), psw);

  const ChangePswConfirmPasswordField._(this.value, this._source);

  final Either<Failure, String> value;
  final String _source;

  @override
  List<Object?> get props => [value, _source];
}

Either<Failure, String> _validateConfirmPasswordField(String input, String source) {
  if (input == source || (input == "" && source == "")) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}