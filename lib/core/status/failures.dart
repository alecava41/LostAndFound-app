import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  // represents a generic error (not expected)
  const factory Failure.genericFailure() = _GenericFailure;

  // represents an software error on the request, could be: malformed request, user not authorized, user access forbidden, address not valid
  const factory Failure.requestFailure() = _RequestFailure;

  // represents a 404 error during a request
  const factory Failure.recordNotFoundFailure() = _RecordNotFoundFailure;

  // represents a conflict error during a request
  const factory Failure.duplicateRecordFailure(String failureField) = _DuplicateRecordFailure;

  // represent the same error while performing login
  const factory Failure.passwordMismatchFailure() = _PasswordMismatchFailure;

  // represent an error during the validation of the fields of a request or before making the request
  const factory Failure.validationFailure(String? reason) = _ValidationFailure;

  // represents a network error during a request
  const factory Failure.networkFailure() = _NetworkFailure;

  // represents an error involving the geolocation service
  const factory Failure.geolocationFailure(GeolocationError reason) = _GeolocationFailure;
}

enum GeolocationError { serviceNotAvailable, permissionDenied, permissionPermanentlyDenied }
