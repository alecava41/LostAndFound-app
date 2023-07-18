class MalformedRequestException implements Exception {}

class RecordNotFoundException implements Exception {}

class UserNotAuthorizedException implements Exception {}

class InternalServerException implements Exception {}

class DuplicateRecordException implements Exception {
  final String duplicateField;
  DuplicateRecordException(this.duplicateField);
}

class PasswordMismatchException implements Exception {}

class ValidationException implements Exception {}

class AddressNotValidException implements Exception {}

class ReferenceNotFoundException implements Exception {}

class UserAccessForbiddenException implements Exception {}

class LocationPermissionDeniedException implements Exception {}

class LocationPermissionDeniedForeverException implements Exception {}