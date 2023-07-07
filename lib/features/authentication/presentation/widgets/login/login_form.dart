import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/login_button.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/password_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/sign_up.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/user_input.dart';

import '../../../../../widgets/title_logo.dart';
import '../../bloc/login/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            final authFailureOrSuccess = state.authFailureOrSuccess;

            if (authFailureOrSuccess != null) {
              authFailureOrSuccess.fold(
                  (failure) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            padding: const EdgeInsets.all(30),
                            backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
                            content: Text(
                                failure.when<String>(
                                  invalidCredentials: () => 'Invalid credentials. Please try again.',
                                  serverError: () => 'Server error. Please try again later.',
                                ),
                                style: const TextStyle(fontSize: 20)),
                          ),
                        )
                      },
                  // TODO: navigate to homepage instead
                  (success) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Successful sign in'),
                          ),
                        ),
                        Navigator.of(context).pushNamed('/home')
                      });
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              titleLogoVertical(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UserInput(),
                  SizedBox(height: 10),
                  PasswordInput(),
                  SizedBox(height: 60),
                  LoginButton(),
                ],
              ),
              const SizedBox(height: 20),
              const SignUpText(),
            ],
          ),
        ),
      ),
    );
  }
}
