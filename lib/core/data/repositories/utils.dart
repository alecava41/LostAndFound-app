import '../../status/exceptions.dart';
import '../../status/failures.dart';

Failure mapExceptionToFailure(Object e) {
  switch (e.runtimeType) {
    case MalformedRequestException:
    case UserNotAuthorizedException:
    case UserAccessForbiddenException:
    case AddressNotValidException:
      return const Failure.requestFailure();
    case RecordNotFoundException:
    case ReferenceNotFoundException:
      return const Failure.recordNotFoundFailure();
    case DuplicateRecordException:
      final duplicateField = (e as DuplicateRecordException).duplicateField;
      if (duplicateField.contains('username')) {
        return const Failure.duplicateRecordFailure('username');
      } else {
        return const Failure.duplicateRecordFailure('email');
      }
    case PasswordMismatchException:
      return const Failure.passwordMismatchFailure();
    case ValidationException:
      return const Failure.validationFailure();
    default:
      // includes InternalServerException
      return const Failure.genericFailure();
  }
}
