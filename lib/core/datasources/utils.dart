import 'package:dio/dio.dart';

import '../status/exceptions.dart';

void handleError(Object obj) {
  switch (obj.runtimeType) {
    case DioException:
      final res = (obj as DioException).response;
      final code = res?.data['error'] as int;

      switch (res?.statusCode) {
        case 500:
          throw InternalServerException();
        case 400:
          if (code == 3) {
            throw ValidationException();
          } else if (code == 4) {
            throw MalformedRequestException();
          } else if (code == 8) {
            throw AddressNotValidException();
          } else {
            throw ReferenceNotFoundException();
          }
        case 401:
          throw UserNotAuthorizedException();
        case 403:
          throw UserAccessForbiddenException();
        case 404:
          throw RecordNotFoundException();
        case 409:
          if (code == 2) {
            throw DuplicateRecordException();
          } else {
            throw PasswordMismatchException();
          }
        default:
          throw InternalServerException();
      }
    default:
      throw InternalServerException();
  }
}