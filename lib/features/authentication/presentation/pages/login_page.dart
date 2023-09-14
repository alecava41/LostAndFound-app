import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/widgets/login/login_form.dart';

import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          elevation: 0,
          title: Text(
            AppLocalizations.of(context)!.login,
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
          surfaceTintColor: Theme.of(context).colorScheme.outline,
          shadowColor: Theme.of(context).colorScheme.outline,
          iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (_) => sl<LoginBloc>(),
            child: const LoginForm(),
          ),
        ),
      ),
    );
  }
}
