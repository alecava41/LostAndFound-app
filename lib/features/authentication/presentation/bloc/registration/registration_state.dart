part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required RegistrationUsernameField username,
    required RegistrationEmailField email,
    required RegistrationPasswordField password,
    required RegistrationConfirmPasswordField confirmPassword,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirmPassword,
    Either<RegistrationFailure, Success>? registrationFailureOrSuccess,
    // Unit comes from Dartz package and is equivalent to void.
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
    username: RegistrationUsernameField("", false),
    email: RegistrationEmailField("", false),
    password: RegistrationPasswordField(""),
    confirmPassword: RegistrationConfirmPasswordField("",""),
  );
}