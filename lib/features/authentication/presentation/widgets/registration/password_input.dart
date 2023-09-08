import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(builder: (context, state) {
      return TextFormField(
        onChanged: (value) => {
          context.read<RegistrationBloc>().add(RegistrationEvent.passwordFieldChanged(value)),
        },
        decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () => context.read<RegistrationBloc>().add(const RegistrationEvent.obscurePasswordToggled()),
            icon: state.obscurePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          ),
        ),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
        validator: (_) => state.password.value.fold(
          (failure) => failure.maybeWhen<String?>(
              validationFailure: () => "Password must contain at least 8 characters, using uppercase, lowercase and numeric characters.",
              orElse: () => null),
          (_) => null,
        ),
        autocorrect: false,
        obscureText: state.obscurePassword,
        // obscureText: _obscureText,
      );
    });
  }
}
