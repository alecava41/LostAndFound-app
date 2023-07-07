import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidUserLoginInput({
    required String failedValue,
  }) = _InvalidUserLogin;

  const factory ValueFailure.invalidPasswordLoginInput({
    required String failedValue,
  }) = _InvalidPasswordLogin;

  const factory ValueFailure.invalidEmailRegistrationInput({
    required String failedValue,
  }) = _InvalidEmailRegistration;

  const factory ValueFailure.duplicateEmailRegistrationInput({
    required String failedValue,
  }) = _DuplicateEmailRegistration;

  const factory ValueFailure.invalidUsernameRegistrationInput({
    required String failedValue,
  }) = _InvalidUsernameRegistration;

  const factory ValueFailure.duplicateUsernameRegistrationInput({
    required String failedValue,
  }) = _DuplicateUsernameRegistration;

  const factory ValueFailure.invalidPasswordRegistrationInput({
    required String failedValue,
  }) = _InvalidPasswordRegistration;


  const factory ValueFailure.invalidConfirmPasswordRegistrationInput({
    required String failedValue,
  }) = _InvalidConfirmPasswordRegistration;
}
