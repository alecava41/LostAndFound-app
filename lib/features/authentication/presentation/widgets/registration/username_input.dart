import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (ctx, state) {
        return TextFormField(
          onChanged: (value) => context.read<RegistrationBloc>().add(RegistrationEvent.usernameFieldChanged(value)),
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.username,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person),
          ),
          validator: (_) => state.username.value.fold(
              (failure) => failure.maybeWhen<String?>(
                  validationFailure: () => AppLocalizations.of(context)!.failureInvalidUsername,
                  duplicateRecordFailure: (_) => AppLocalizations.of(context)!.failureUsernameDuplicate,
                  orElse: () => null),
              (_) => null),
          autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
        );
      },
    );
  }
}
