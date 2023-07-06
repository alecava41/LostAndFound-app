import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login_button.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/password_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/sign_up.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/user_input.dart';

import '../../../../widgets/title_logo.dart';
import '../bloc/login/login_bloc.dart';

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
                      (failure) =>
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          failure.when<String>(
                            invalidCredentials: () => 'Invalid user and password combination!',
                            serverError: () => 'Server Error!',
                          ),
                        ),
                      ),
                    )
                  },
                      (success) =>
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Successful sign in'),
                      ),
                    )
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
              //_forgotPassword(context),
              const SizedBox(height: 20),
              const SignUpText(),
            ],
          ),
        ),
      ),
    );
  }

}