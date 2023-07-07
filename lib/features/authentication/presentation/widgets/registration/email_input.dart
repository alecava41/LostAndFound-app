import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(builder: (ctx, state) {
      return TextFormField(
        onChanged: (value) => context.read<RegistrationBloc>().add(RegistrationEvent.emailFieldChanged(value)),
        decoration: InputDecoration(
          hintText: "Email Address",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.mail),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (_) => state.email.value.fold(
            (failure) => failure.maybeWhen<String>(
                invalidEmailRegistrationInput: (_) => "Invalid email format",
                duplicateEmailRegistrationInput: (_) => "Email already used.",
                orElse: () => ''),
            (_) => null),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      );
    });
  }
}
