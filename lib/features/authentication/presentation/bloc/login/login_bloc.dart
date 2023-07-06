import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/status/success.dart';

import '../../../../../core/status/failures.dart';
import '../../../domain/failures/login_failure.dart';
import '../../../domain/fields/login_password.dart';
import '../../../domain/fields/login_user.dart';
import '../../../domain/usecases/login_use_case.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc({required LoginUseCase loginUseCase})
      : _loginUseCase = loginUseCase,
        super(LoginState.initial()) {
    on<LoginEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            loginSubmitted: () => _onLoginSubmitted(emit),
            obscurePasswordToggled: () => _onObscurePasswordToggled(emit),
            passwordFieldChanged: (password) => _onPasswordFieldChanged(emit, password),
            userFieldChanged: (user) => _onUserFieldChanged(emit, user));
      },
    );
  }

  void _onObscurePasswordToggled(Emitter<LoginState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void _onUserFieldChanged(Emitter<LoginState> emit, String userString) {
    emit(
      state.copyWith(
        user: LoginUserField(userString),
        authFailureOrSuccess: null,
      ),
    );
  }

  void _onPasswordFieldChanged(Emitter<LoginState> emit, String passwordString) {
    emit(
      state.copyWith(
        password: LoginPasswordField(passwordString),
        authFailureOrSuccess: null,
      ),
    );
  }

  Future<void> _onLoginSubmitted(Emitter<LoginState> emit) async {
    final isUserFieldValid = state.user.value.isRight();
    final isPasswordFieldValid = state.password.value.isRight();

    Either<LoginFailure, Success>? authFailureOrSuccess;

    if (isUserFieldValid && isPasswordFieldValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        ),
      );

      final params =
          LoginParams(password: state.password.value.getOrElse(() => ""), user: state.user.value.getOrElse(() => ""));

      final loginResponse = await _loginUseCase(params);
      loginResponse.fold(
              (failure) => authFailureOrSuccess = Left(_mapLoginFailure(failure)),
              (success) => authFailureOrSuccess = Right(LoginSuccess())
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSuccess: authFailureOrSuccess
      ),
    );
  }

  LoginFailure _mapLoginFailure(Failure failure) {
    switch (failure.runtimeType) {
      case InternalServerFailure:
        return const LoginFailure.serverError();
      default:
        return const LoginFailure.invalidCredentials();
    }
  }
}
