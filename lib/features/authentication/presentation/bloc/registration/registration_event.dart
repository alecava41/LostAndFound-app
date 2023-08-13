part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.usernameFieldChanged(String userString) = _UsernameFieldChanged;
  const factory RegistrationEvent.emailFieldChanged(String emailString) = _EmailFieldChanged;
  const factory RegistrationEvent.passwordFieldChanged(String passwordString) =_PasswordFieldChanged;
  const factory RegistrationEvent.confirmPasswordFieldChanged(String confirmPasswordString) =_ConfirmPasswordFieldChanged;
  const factory RegistrationEvent.obscurePasswordToggled() =_ObscurePasswordToggled;
  const factory RegistrationEvent.obscureConfirmPasswordToggled() =_ObscureConfirmPasswordToggled;
  const factory RegistrationEvent.registrationSubmitted(bool hasNotificationPermissions) = _RegistrationSubmitted;
}