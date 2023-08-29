import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/login_button.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/password_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/sign_up.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/user_input.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../widgets/title_logo.dart';
import '../../bloc/login/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          final authFailureOrSuccess = state.authFailureOrSuccess;

          if (authFailureOrSuccess != null) {
            authFailureOrSuccess.fold(
                (failure) => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          padding: const EdgeInsets.all(30),
                          backgroundColor: Colors.red,
                          content: Text(
                              failure.maybeWhen<String>(
                                  passwordMismatchFailure: () => 'Invalid credentials. Please try again.',
                                  genericFailure: () => 'Server error. Please try again later.',
                                  networkFailure: () =>
                                      'No internet connection available. Check your internet connection.',
                                  orElse: () => "Unknown error"),
                              style: const TextStyle(fontSize: 20)),
                        ),
                      )
                    },
                (success) => {
                      // Update home/user content
                      context.read<HomeBloc>().add(const HomeEvent.homeRefreshed()),
                      context.read<UserBloc>().add(const UserEvent.contentCreated()),

                      Navigator.popUntil(context, (route) => route.isFirst),
                      Navigator.of(context).pushReplacementNamed('/')
                    });
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleLogoVertical(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const UserInput(),
                const SizedBox(height: 12),
                const PasswordInput(),
                SizedBox(height: 4.h),
                const LoginButton(),
              ],
            ),
            const SizedBox(height: 15),
            const SignUpText(),
          ],
        ),
      ),
    );
  }
}
