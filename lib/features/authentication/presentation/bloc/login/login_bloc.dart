import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/chat/domain/usecases/login_chat_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../domain/fields/login/login_password.dart';
import '../../../domain/fields/login/login_user.dart';
import '../../../domain/usecases/login_usecase.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final LoginChatUseCase _loginChatUseCase;

  LoginBloc({required LoginUseCase loginUseCase, required LoginChatUseCase loginChatUseCase})
      : _loginUseCase = loginUseCase,
        _loginChatUseCase = loginChatUseCase,
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
    emit(state.copyWith(user: LoginUserField(userString)));
  }

  void _onPasswordFieldChanged(Emitter<LoginState> emit, String passwordString) {
    emit(state.copyWith(password: LoginPasswordField(passwordString)));
  }

  Future<void> _onLoginSubmitted(Emitter<LoginState> emit) async {
    final isUserFieldValid = state.user.value.isRight();
    final isPasswordFieldValid = state.password.value.isRight();

    Either<Failure, Success>? authFailureOrSuccess;

    if (isUserFieldValid && isPasswordFieldValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        ),
      );

      final params = LoginParams(
          password: state.password.value.getOrElse(() => ""), user: state.user.value.getOrElse(() => ""),
          token: Platform.isAndroid ? await FirebaseMessaging.instance.getToken(): null);

      final loginResponse = await _loginUseCase(params);
      loginResponse.fold(
        (failure) => authFailureOrSuccess = Left(failure),
        (success) {
          authFailureOrSuccess = Right(success);
        },
      );

      if (loginResponse.isRight()) {
        await _loginChatUseCase(NoParams());
      }
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSuccess: authFailureOrSuccess,
      ),
    );

    emit(state.copyWith(authFailureOrSuccess: null));
  }
}
