import '../status/exceptions.dart';
import '../status/failures.dart';

Failure mapExceptionToFailure(Object e) {
  switch (e.runtimeType) {
    case MalformedRequestException: return MalformedRequestFailure();
    case RecordNotFoundException: return RecordNotFoundFailure();
    case UserNotAuthorizedException: return UserNotAuthorizedFailure();
    case InternalServerException: return InternalServerFailure();
    case DuplicateRecordException:
      final duplicateField = (e as DuplicateRecordException).duplicateField;
      if (duplicateField.contains('username')) {
        return DuplicateRecordFailure('username');
      } else {
        return DuplicateRecordFailure('email');
      }
    case PasswordMismatchException: return PasswordMismatchFailure();
    case ValidationException: return ValidationFailure();
    case AddressNotValidException: return AddressNotValidFailure();
    case ReferenceNotFoundException: return RecordNotFoundFailure();
    case UserAccessForbiddenException: return UserAccessForbiddenFailure();
    default: return GenericFailure();
  }
}