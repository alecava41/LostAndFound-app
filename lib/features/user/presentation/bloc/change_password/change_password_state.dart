part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required ChangePswOldPasswordField oldPassword,
    required ChangePswNewPasswordField newPassword,
    required ChangePswConfirmPasswordField confirmPassword,

    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(true) bool obscureOldPassword,
    @Default(true) bool obscureNewPassword,
    @Default(true) bool obscureConfirmPassword,

    Either<Failure, Success>? changePswFailureOrSuccess,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
    oldPassword: ChangePswOldPasswordField("", false),
    newPassword: ChangePswNewPasswordField(""),
    confirmPassword: ChangePswConfirmPasswordField("", "")
  );
}