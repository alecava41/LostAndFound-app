import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/login_form.dart';

import '../../../../injection_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading:
          // TODO: show it only if there are other screens, otherwise not needed. The same applies to registration screen.
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: BlocProvider(
          create: (_) => sl<LoginBloc>(),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
