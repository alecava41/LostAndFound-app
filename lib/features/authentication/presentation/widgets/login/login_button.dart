import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';

import '../../../../../utils/colors/custom_color.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return ElevatedButton(
        onPressed: () {
          context.read<LoginBloc>().add(const LoginEvent.loginSubmitted());
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: state.isSubmitting
            ? CustomCircularProgress(
                size: 25,
                color: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
              )
            : Text(
                AppLocalizations.of(context)!.singIn,
                style: const TextStyle(fontSize: 20),
              ),
      );
    });
  }
}
