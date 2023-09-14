import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/user/presentation/bloc/change_password/change_password_bloc.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ChangePasswordBloc>(),
      child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        listener: (ctx, state) {
          final changePswFailureOrSuccess = state.changePswFailureOrSuccess;

          if (changePswFailureOrSuccess != null) {
            changePswFailureOrSuccess.fold(
              (failure) => showBasicErrorSnackbar(context, failure),
              (_) => {
                showBasicSuccessSnackbar(context, AppLocalizations.of(context)!.successPasswordChange),
                Navigator.pop(context)
              },
            );
          }
        },
        builder: (ctx, state) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
              elevation: 0,
              surfaceTintColor: Theme.of(context).colorScheme.outline,
              shadowColor: Theme.of(context).colorScheme.outline,
              title: Text(
                AppLocalizations.of(context)!.changePasswordButton,
                style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
              ),
              iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            AppLocalizations.of(context)!.passwordCreate1,
                            style: const TextStyle(fontSize: 22),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Text("• ", style: TextStyle(fontSize: 30)),
                                Text(
                                  AppLocalizations.of(context)!.passwordCreate2,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Text("• ", style: TextStyle(fontSize: 30)),
                                Expanded(
                                  child: Text(
                                    AppLocalizations.of(context)!.passwordCreate3,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: TextFormField(
                        onChanged: (value) =>
                            ctx.read<ChangePasswordBloc>().add(ChangePasswordEvent.oldPasswordFieldChanged(value)),
                        decoration: InputDecoration(
                          errorMaxLines: 3,
                          prefixIcon: const Icon(Icons.lock),
                          hintText: AppLocalizations.of(context)!.passwordFormCurrentHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                          filled: true,
                          suffixIconColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                          suffixIcon: IconButton(
                            icon: Icon(
                              state.obscureOldPassword ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () => ctx
                                .read<ChangePasswordBloc>()
                                .add(const ChangePasswordEvent.obscureOldPasswordToggled()),
                          ),
                        ),
                        obscureText: state.obscureOldPassword,
                        validator: (_) => state.oldPassword.value.fold(
                            (failure) => failure.maybeWhen<String?>(
                                validationFailure: () => AppLocalizations.of(context)!.failureInvalidOldPassword,
                                recordNotFoundFailure: () =>
                                    AppLocalizations.of(context)!.failureInvalidOldPasswordNotMatching,
                                orElse: () => null),
                            (_) => null),
                        autovalidateMode:
                            state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: TextFormField(
                        onChanged: (value) =>
                            ctx.read<ChangePasswordBloc>().add(ChangePasswordEvent.newPasswordFieldChanged(value)),
                        decoration: InputDecoration(
                          errorMaxLines: 3,
                          prefixIcon: const Icon(Icons.lock),
                          hintText: AppLocalizations.of(context)!.newPasswordHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                          filled: true,
                          suffixIconColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                          suffixIcon: IconButton(
                            icon: Icon(
                              state.obscureNewPassword ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () => ctx
                                .read<ChangePasswordBloc>()
                                .add(const ChangePasswordEvent.obscureNewPasswordToggled()),
                          ),
                        ),
                        obscureText: state.obscureNewPassword,
                        validator: (_) => state.newPassword.value.fold(
                            (failure) => failure.maybeWhen<String?>(
                                validationFailure: () => AppLocalizations.of(context)!.failureInvalidNewPassword,
                                orElse: () => null),
                            (_) => null),
                        autovalidateMode:
                            state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        onChanged: (value) =>
                            ctx.read<ChangePasswordBloc>().add(ChangePasswordEvent.confirmPasswordFieldChanged(value)),
                        decoration: InputDecoration(
                          errorMaxLines: 3,
                          prefixIcon: const Icon(Icons.lock),
                          hintText: AppLocalizations.of(context)!.confirmPassword,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                          filled: true,
                          suffixIconColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                          suffixIcon: IconButton(
                            icon: Icon(
                              state.obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () => ctx
                                .read<ChangePasswordBloc>()
                                .add(const ChangePasswordEvent.obscureConfirmPasswordToggled()),
                          ),
                        ),
                        obscureText: state.obscureConfirmPassword,
                        validator: (_) => state.confirmPassword.value.fold(
                            (failure) => failure.maybeWhen<String?>(
                                validationFailure: () => AppLocalizations.of(context)!.failureConfirmPassword,
                                orElse: () => null),
                            (_) => null),
                        autovalidateMode:
                            state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              onPressed: () => ctx
                                  .read<ChangePasswordBloc>()
                                  .add(const ChangePasswordEvent.changePasswordSubmitted()),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: state.isSubmitting
                                  ? CustomCircularProgress(
                                size: 25,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ) : Text(
                                AppLocalizations.of(context)!.changePasswordButton,
                                style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
