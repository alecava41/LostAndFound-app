import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../bloc/registration/registration_bloc.dart';
import '../widgets/registration/registration_form.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
          elevation: 0,
          title: Text(
            AppLocalizations.of(context)!.registration,
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
            create: (_) => sl<RegistrationBloc>(),
            child: const RegistrationForm(),
          ),
        ),
      ),
    );
  }
}
