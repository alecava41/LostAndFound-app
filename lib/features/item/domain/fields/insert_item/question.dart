import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class QuestionField extends Equatable {
  factory QuestionField(String input) => QuestionField._(_validateQuestionField(input));

  const QuestionField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateQuestionField(String input) {
  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure("Safe question is required."));
  }
}