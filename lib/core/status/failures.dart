import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class GenericFailure extends Failure {}

class MalformedRequestFailure extends Failure {}

class RecordNotFoundFailure extends Failure {}

class UserNotAuthorizedFailure extends Failure {}

class InternalServerFailure extends Failure {}

class DuplicateRecordFailure extends Failure {
  final String failureField;
  DuplicateRecordFailure(this.failureField);
}

class PasswordMismatchFailure extends Failure {}

class ValidationFailure extends Failure {}

class AddressNotValidFailure extends Failure {}

class ReferenceNotFoundFailure extends Failure {}

class UserAccessForbiddenFailure extends Failure {}

class NetworkFailure extends Failure {}

class GeolocationServiceFailure extends Failure {}
class GeolocationPermissionDeniedFailure extends Failure {}
class GeolocationPermissionPermanentlyDeniedFailure extends Failure {}