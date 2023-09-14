import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppLocalizations.of(context)!.signUpText),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register');
          },
          child: Text(
            AppLocalizations.of(context)!.signUp,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
