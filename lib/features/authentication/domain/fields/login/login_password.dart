import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class LoginPasswordField extends Equatable {
  factory LoginPasswordField(String input) => LoginPasswordField._(_validatePassword(input));

  const LoginPasswordField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validatePassword(String input) {
  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}
