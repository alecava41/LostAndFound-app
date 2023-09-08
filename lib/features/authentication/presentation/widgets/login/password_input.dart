import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login/login_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return TextFormField(
        onChanged: (value) => context.read<LoginBloc>().add(LoginEvent.passwordFieldChanged(value)),
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () => context.read<LoginBloc>().add(const LoginEvent.obscurePasswordToggled()),
            icon: state.obscurePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          ),
        ),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
        validator: (_) => state.password.value.fold(
          (failure) => failure.maybeWhen<String?>(
              validationFailure: () => "Invalid password.",
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
