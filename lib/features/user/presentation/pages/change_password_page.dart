import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/change_password/change_password_bloc.dart';

import '../../../../injection_container.dart';

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
                (failure) => failure.maybeWhen(
                  validationFailure: (_) {},
                  orElse: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        failure.maybeWhen<String>(
                            genericFailure: () => 'Server error. Please try again later.',
                            networkFailure: () => 'No internet connection available. Check your internet connection.',
                            orElse: () => "Unknown error"),
                      ),
                    ),
                  ),
                ),
                (_) => {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Password successfully updated"),
                    ),
                  ),

                  Navigator.pop(context)
                },
              );
            }
          },
          builder: (ctx, state) => GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: const Text(
                      "Change password",
                      style: TextStyle(color: Colors.black),
                    ),
                    iconTheme: const IconThemeData(color: Colors.black),
                  ),
                  body: SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text(
                                    "To create a secure password:",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text("• ", style: TextStyle(fontSize: 30)),
                                        Text(
                                          "Use at least 8 characters;",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )),
                                Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text("• ", style: TextStyle(fontSize: 30)),
                                        Expanded(
                                          child: Text(
                                            "Use a combination of uppercase letters, lowercase letters and numbers.",
                                            style: TextStyle(fontSize: 16),
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
                                onChanged: (value) => ctx
                                    .read<ChangePasswordBloc>()
                                    .add(ChangePasswordEvent.oldPasswordFieldChanged(value)),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  hintText: "Current password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                                  filled: true,
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
                                        validationFailure: (reason) => reason, orElse: () => null),
                                    (_) => null),
                                autovalidateMode:
                                    state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                              child: TextFormField(
                                onChanged: (value) => ctx
                                    .read<ChangePasswordBloc>()
                                    .add(ChangePasswordEvent.newPasswordFieldChanged(value)),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  hintText: "New password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                                  filled: true,
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
                                        validationFailure: (reason) => reason, orElse: () => null),
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
                                onChanged: (value) => ctx
                                    .read<ChangePasswordBloc>()
                                    .add(ChangePasswordEvent.confirmPasswordFieldChanged(value)),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  hintText: "Confirm new password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                                  filled: true,
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
                                        validationFailure: (reason) => reason, orElse: () => null),
                                    (_) => null),
                                autovalidateMode:
                                    state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                              ),
                            ),
                            const SizedBox(height: 10),
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
                                        shape: const StadiumBorder(),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                      ),
                                      child: const Text(
                                        "Change password",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              )),
    );
  }
}
