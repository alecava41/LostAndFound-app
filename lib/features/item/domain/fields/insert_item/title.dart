import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class TitleField extends Equatable {
  factory TitleField(String input) => TitleField._(_validateTitleField(input));

  const TitleField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateTitleField(String input) {
  const titleRegex = r"""^[\x20-\x7D ]{1,50}$""";
  input = input.trim();

  if (RegExp(titleRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}