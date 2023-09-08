import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class RegistrationEmailField extends Equatable {
  factory RegistrationEmailField(String input, bool isDuplicate) => RegistrationEmailField._(_validateEmailField(input, isDuplicate), isDuplicate);

  const RegistrationEmailField._(this.value, this.isDuplicate);

  final Either<Failure, String> value;
  final bool isDuplicate;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateEmailField(String input, bool isDuplicate) {
  if (isDuplicate) {
    return const Left(Failure.duplicateRecordFailure(""));
  }

  input = input.trim();
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";


  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}