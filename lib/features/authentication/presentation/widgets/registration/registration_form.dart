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
import 'package:sizer/sizer.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          
          //color: Colors.amber,
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: BlocListener<RegistrationBloc, RegistrationState>(
            listener: (ctx, state) {
              final regFailureOrSuccess = state.registrationFailureOrSuccess;
      
              if (regFailureOrSuccess != null) {
                regFailureOrSuccess.fold(
                    (failure) => failure.maybeWhen(
                        genericFailure: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text('Server error. Please try again later.', style: TextStyle(fontSize: 20)),
                              ),
                            ),
                        networkFailure: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text('No internet connection available. Check your internet connection.',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                        orElse: () {}),
                    (_) => {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successful sign up', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                          Navigator.pushReplacementNamed(ctx, '/login')
                        });
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 3.5.h,),
                titleLogoHorizontal(),
                SizedBox(height: 6.w),
                UsernameInput(),
                SizedBox(height: 12),
                EmailInput(),
                SizedBox(height: 12),
                PasswordInput(),
                SizedBox(height: 12),
                ConfirmPasswordInput(),
                SizedBox(height: 4.h),
                RegistrationButton(),
                const SizedBox(height: 15),
                const SignInText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
