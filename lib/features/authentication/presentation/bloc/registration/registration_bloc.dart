import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:lost_and_found/features/authentication/domain/fields/registration/registration_email.dart';
import 'package:lost_and_found/features/authentication/domain/fields/registration/registration_username.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/fields/registration/registration_confirm_password.dart';
import '../../../domain/fields/registration/registration_password.dart';
import '../../../domain/usecases/registration_usecase.dart';

part 'registration_bloc.freezed.dart';

part 'registration_event.dart';

part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationUseCase _registrationUseCase;

  RegistrationBloc({required RegistrationUseCase registrationUseCase})
      : _registrationUseCase = registrationUseCase,
        super(RegistrationState.initial()) {
    on<RegistrationEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            registrationSubmitted: () => _onRegistrationSubmitted(emit),
            obscurePasswordToggled: () => _onObscurePasswordToggled(emit),
            obscureConfirmPasswordToggled: () => _onObscureConfirmPasswordToggled(emit),
            usernameFieldChanged: (username) => _onUsernameFieldChanged(emit, username),
            emailFieldChanged: (email) => _onEmailFieldChanged(emit, email),
            passwordFieldChanged: (password) => _onPasswordFieldChanged(emit, password),
            confirmPasswordFieldChanged: (confirm) => _onConfirmPasswordFieldChanged(emit, confirm));
      },
    );
  }

  void _onObscurePasswordToggled(Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      obscurePassword: !state.obscurePassword,
      registrationFailureOrSuccess: null,
    ));
  }

  void _onObscureConfirmPasswordToggled(Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      obscureConfirmPassword: !state.obscureConfirmPassword,
      registrationFailureOrSuccess: null,
    ));
  }

  void _onUsernameFieldChanged(Emitter<RegistrationState> emit, String userString) {
    emit(
      state.copyWith(
        username: RegistrationUsernameField(userString, false),
        registrationFailureOrSuccess: null,
      ),
    );
  }

  void _onEmailFieldChanged(Emitter<RegistrationState> emit, String email) {
    emit(
      state.copyWith(
        email: RegistrationEmailField(email, false),
        registrationFailureOrSuccess: null,
      ),
    );
  }

  // TODO: not working flawlessly, something errors for confirmPassword pops up even if that's not the case
  void _onPasswordFieldChanged(Emitter<RegistrationState> emit, String psw) {
    emit(
      state.copyWith(
        password: RegistrationPasswordField(psw),
        confirmPassword: RegistrationConfirmPasswordField(psw, state.password.value.getOrElse(() => "")),
        registrationFailureOrSuccess: null,
      ),
    );
  }

  void _onConfirmPasswordFieldChanged(Emitter<RegistrationState> emit, String confirm) {
    emit(
      state.copyWith(
        confirmPassword: RegistrationConfirmPasswordField(state.password.value.getOrElse(() => ""), confirm),
        registrationFailureOrSuccess: null,
      ),
    );
  }

  Future<void> _onRegistrationSubmitted(Emitter<RegistrationState> emit) async {
    final isUsernameFieldValid = state.username.value.isRight();
    final isEmailFieldValid = state.email.value.isRight();
    final isPasswordFieldValid = state.password.value.isRight();
    final isConfirmPasswordFieldValid = state.confirmPassword.value.isRight();

    Either<Failure, Success>? registrationFailureOrSuccess;

    if (isUsernameFieldValid && isPasswordFieldValid && isEmailFieldValid && isConfirmPasswordFieldValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          registrationFailureOrSuccess: null,
        ),
      );

      final params = RegistrationParams("token", "android",
          password: state.password.value.getOrElse(() => ""),
          username: state.username.value.getOrElse(() => ""),
          email: state.email.value.getOrElse(() => ""));

      final loginResponse = await _registrationUseCase(params);

      loginResponse.fold((failure) {
        failure.maybeWhen(
            duplicateRecordFailure: (reason) {
              if (reason == "username") {
                emit(
                  state.copyWith(username: RegistrationUsernameField(state.username.value.getOrElse(() => ""), true)),
                );
              } else {
                emit(
                  state.copyWith(email: RegistrationEmailField(state.email.value.getOrElse(() => ""), true)),
                );
              }
            },
            orElse: () {});

        registrationFailureOrSuccess = Left(failure);
      }, (success) => registrationFailureOrSuccess = Right(success));
    }

    emit(
      state.copyWith(
          isSubmitting: false, showErrorMessage: true, registrationFailureOrSuccess: registrationFailureOrSuccess),
    );
  }
}
