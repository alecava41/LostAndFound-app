import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login_form.dart';

import '../../../../injection_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () { Navigator.of(context).pushNamed('/',); },
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
