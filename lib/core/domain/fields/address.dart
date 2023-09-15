import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/status/failures.dart';

class AddressField extends Equatable {
  factory AddressField(String input) => AddressField._(_validateAddressField(input));

  const AddressField._(this.value);

  final Either<Failure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<Failure, String> _validateAddressField(String input) {
  input = input.trim();
  const addressRegex = r"""^[A-Za-z0-9 ]{1,70}$""";

  if (RegExp(addressRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return const Left(Failure.validationFailure());
  }
}