import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login/login_bloc.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return TextFormField(
        onChanged: (value) => context.read<LoginBloc>().add(LoginEvent.userFieldChanged(value)),
        decoration: InputDecoration(
          hintText: "Email or Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.person),
        ),
        validator: (_) => state.user.value.fold(
            (failure) => failure.maybeWhen<String?>(validationFailure: (reason) => reason, orElse: () => null),
            (_) => null),
        autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      );
    });
  }
}
