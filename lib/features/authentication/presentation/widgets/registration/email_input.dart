import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(builder: (ctx, state) {
      return TextFormField(
        onChanged: (value) => context.read<RegistrationBloc>().add(RegistrationEvent.emailFieldChanged(value)),
        decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: AppLocalizations.of(context)!.email,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
          fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.mail),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (_) => state.email.value.fold(
            (failure) => failure.maybeWhen<String?>(
                duplicateRecordFailure: (_) => AppLocalizations.of(context)!.failureEmailDuplicate,
                validationFailure: () => AppLocalizations.of(context)!.failureEmailInvalid,
                orElse: () => null),
            (_) => null),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      );
    });
  }
}
