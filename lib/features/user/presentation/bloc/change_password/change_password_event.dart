part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordFieldChanged(String passwordString) =_OldPasswordFieldChanged;
  const factory ChangePasswordEvent.newPasswordFieldChanged(String passwordString) =_NewPasswordFieldChanged;
  const factory ChangePasswordEvent.confirmPasswordFieldChanged(String confirmPasswordString) =_ConfirmPasswordFieldChanged;
  const factory ChangePasswordEvent.obscureOldPasswordToggled() =_ObscureOldPasswordToggled;
  const factory ChangePasswordEvent.obscureNewPasswordToggled() =_ObscureNewPasswordToggled;
  const factory ChangePasswordEvent.obscureConfirmPasswordToggled() =_ObscureConfirmPasswordToggled;
  const factory ChangePasswordEvent.changePasswordSubmitted() = _ChangePasswordSubmitted;
}