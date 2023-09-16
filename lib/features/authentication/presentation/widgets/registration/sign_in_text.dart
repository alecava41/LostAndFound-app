import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppLocalizations.of(context)!.signInText),
        Expanded(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero
            ),
            child: Text(
              AppLocalizations.of(context)!.singIn,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
