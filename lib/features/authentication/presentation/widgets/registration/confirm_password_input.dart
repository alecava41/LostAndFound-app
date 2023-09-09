import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(builder: (context, state) {
      return TextFormField(
        onChanged: (value) => context.read<RegistrationBloc>().add(RegistrationEvent.confirmPasswordFieldChanged(value)),
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)!.confirmPassword,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () => context.read<RegistrationBloc>().add(const RegistrationEvent.obscureConfirmPasswordToggled()),
            icon: state.obscureConfirmPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          ),
        ),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
        validator: (_) => state.confirmPassword.value.fold(
          (failure) => failure.maybeWhen<String?>(
              validationFailure: () => AppLocalizations.of(context)!.failureConfirmPassword,
              orElse: () => null),
          (_) => null,
        ),
        autocorrect: false,
        obscureText: state.obscureConfirmPassword,
        // obscureText: _obscureText,
      );
    });
  }
}
