part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.userFieldChanged(String userString) = _UserFieldChanged;
  const factory LoginEvent.passwordFieldChanged(String passwordString) =_PasswordFieldChanged;
  const factory LoginEvent.obscurePasswordToggled() =_ObscurePasswordToggled;
  const factory LoginEvent.loginSubmitted() = _LoginSubmitted;
}