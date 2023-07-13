import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_failure.freezed.dart';

@freezed
class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.duplicateUsername() =_DuplicateUsernameError;
  const factory RegistrationFailure.duplicateEmail() =_DuplicateEmailError;
  const factory RegistrationFailure.serverError() = _ServerError;
  const factory RegistrationFailure.networkError() = _NetworkError;
}