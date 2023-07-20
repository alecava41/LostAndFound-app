part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required LoginUserField user,
    required LoginPasswordField password,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(true) bool obscurePassword,
    Either<Failure, Success>? authFailureOrSuccess,
    // Unit comes from Dartz package and is equivalent to void.
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    user: LoginUserField(''),
    password: LoginPasswordField(''),
  );
}