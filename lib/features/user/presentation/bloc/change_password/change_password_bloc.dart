import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../../authentication/domain/usecases/login_usecase.dart';
import '../../../domain/fields/change_password/change_psw__confirm_password.dart';
import '../../../domain/fields/change_password/change_psw_new_password.dart';
import '../../../domain/fields/change_password/change_psw_old_password.dart';

part 'change_password_bloc.freezed.dart';

part 'change_password_event.dart';

part 'change_password_state.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final UpdatePasswordUseCase _updatePasswordUseCase;
  final SecureStorage _storage;
  final LoginUseCase _loginUseCase;

  ChangePasswordBloc(
      {required UpdatePasswordUseCase updatePasswordUseCase,
      required SecureStorage storage,
      required LoginUseCase loginUseCase})
      : _updatePasswordUseCase = updatePasswordUseCase,
        _storage = storage,
        _loginUseCase = loginUseCase,
        super(ChangePasswordState.initial()) {
    on<ChangePasswordEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          oldPasswordFieldChanged: (value) => _onOldPasswordFieldChanged(emit, value),
          newPasswordFieldChanged: (value) => _onNewPasswordFieldChanged(emit, value),
          confirmPasswordFieldChanged: (value) => _onConfirmPasswordFieldChanged(emit, value),
          obscureOldPasswordToggled: () => _onObscureOldPassword(emit),
          obscureNewPasswordToggled: () => _onObscureNewPassword(emit),
          obscureConfirmPasswordToggled: () => _onObscureConfirmPassword(emit),
          changePasswordSubmitted: () => _onChangePasswordSubmitted(emit),
        );
      },
    );
  }

  void _onObscureOldPassword(Emitter<ChangePasswordState> emit) {
    emit(state.copyWith(
      obscureOldPassword: !state.obscureOldPassword,
    ));
  }

  void _onObscureNewPassword(Emitter<ChangePasswordState> emit) {
    emit(state.copyWith(
      obscureNewPassword: !state.obscureNewPassword,
    ));
  }

  void _onObscureConfirmPassword(Emitter<ChangePasswordState> emit) {
    emit(state.copyWith(
      obscureConfirmPassword: !state.obscureConfirmPassword,
    ));
  }

  void _onOldPasswordFieldChanged(Emitter<ChangePasswordState> emit, String psw) {
    emit(state.copyWith(oldPassword: ChangePswOldPasswordField(psw, false)));
  }

  void _onNewPasswordFieldChanged(Emitter<ChangePasswordState> emit, String psw) {
    emit(
      state.copyWith(
        newPassword: ChangePswNewPasswordField(psw),
        confirmPassword: ChangePswConfirmPasswordField(psw, state.newPassword.value.getOrElse(() => "")),
      ),
    );
  }

  void _onConfirmPasswordFieldChanged(Emitter<ChangePasswordState> emit, String confirm) {
    emit(
      state.copyWith(
        confirmPassword: ChangePswConfirmPasswordField(state.newPassword.value.getOrElse(() => ""), confirm),
      ),
    );
  }

  Future<void> _onChangePasswordSubmitted(Emitter<ChangePasswordState> emit) async {
    final isOldPasswordValid = state.oldPassword.value.isRight();
    final isNewPasswordValid = state.newPassword.value.isRight();
    final isConfirmPasswordFieldValid = state.confirmPassword.value.isRight();

    Either<Failure, Success>? pswChangeFailureOrSuccess;

    if (isOldPasswordValid && isNewPasswordValid && isConfirmPasswordFieldValid) {
      emit(state.copyWith(isSubmitting: true));

      final params = UpdatePasswordParams(
          oldPassword: state.oldPassword.value.getOrElse(() => ""),
          newPassword: state.newPassword.value.getOrElse(() => ""));

      final changePasswordResponse = await _updatePasswordUseCase(params);

      await changePasswordResponse.fold((failure) {
        failure.maybeWhen(
            passwordMismatchFailure: () => emit(state.copyWith(
                oldPassword: ChangePswOldPasswordField(state.oldPassword.value.getOrElse(() => ""), true))),
            orElse: () {});

        pswChangeFailureOrSuccess = Left(failure);
      }, (success) async {
        final credentials = await _storage.getCredentials();
        await _storage.removeCredentials();
        await _storage.destroySession();

        await _loginUseCase(LoginParams(user: credentials.user, password: params.newPassword));
        pswChangeFailureOrSuccess = Right(success);
      });
    }

    emit(state.copyWith(
        isSubmitting: false, showErrorMessage: true, changePswFailureOrSuccess: pswChangeFailureOrSuccess));
    emit(state.copyWith(changePswFailureOrSuccess: null));
  }
}
