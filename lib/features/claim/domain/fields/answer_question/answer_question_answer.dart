import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class AnswerField extends Equatable {
  factory AnswerField(String input) => AnswerField._(_validateAnswerField(input));

  const AnswerField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateAnswerField(String input) {
  input = input.trim();

  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}