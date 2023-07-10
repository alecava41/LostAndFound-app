import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/password_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/confirm_password_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/email_input.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/registration_button.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/sign_in_text.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/registration/username_input.dart';
import 'package:lost_and_found/widgets/title_logo.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: BlocListener<RegistrationBloc, RegistrationState>(
          listener: (ctx, state) {
            final regFailureOrSuccess = state.registrationFailureOrSuccess;

            if (regFailureOrSuccess != null) {
              regFailureOrSuccess.fold(
                  (failure) => failure.when(
                        duplicateUsername: () => {},
                        duplicateEmail: () => {},
                        serverError: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
                            content: Text('Server error. Please try again later.', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ),
                  (_) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Successful sign up', style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Navigator.of(context).pushNamed('/login')
                      });
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              titleLogoHorizontal(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 80),
                  UsernameInput(),
                  SizedBox(height: 10),
                  EmailInput(),
                  SizedBox(height: 10),
                  PasswordInput(),
                  SizedBox(height: 10),
                  ConfirmPasswordInput(),
                  SizedBox(height: 60),
                  RegistrationButton(),
                ],
              ),
              const SizedBox(height: 20),
              const SignInText(),
            ],
          ),
        ),
      ),
    );
  }
}