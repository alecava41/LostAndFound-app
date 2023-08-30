part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    // Registration domain fields
    required RegistrationUsernameField username,
    required RegistrationEmailField email,
    required RegistrationPasswordField password,
    required RegistrationConfirmPasswordField confirmPassword,

    // UI fields
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(true) bool obscurePassword,
    @Default(true) bool obscureConfirmPassword,
    Either<Failure, Success>? registrationFailureOrSuccess,
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        username: RegistrationUsernameField("", false),
        email: RegistrationEmailField("", false),
        password: RegistrationPasswordField(""),
        confirmPassword: RegistrationConfirmPasswordField("", ""),
      );
}
