import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget titleLogoVertical() {
  return Column(
    children: [
      Image.asset(
        'assets/images/logo.png',
        width: 200,
        height: 200,
      ),
      const SizedBox(height: 20),
      const Text(
        "Lost&Found",
        style: TextStyle(fontSize: 40),
      ),
      const SizedBox(height: 40),
    ],
  );
}

Widget titleLogoHorizontal(BuildContext context) {
  return SizedBox(
    width: 400,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 90,
          height: 90,
        ),
        Text(
          AppLocalizations.of(context)!.lostAndFound,
          style: const TextStyle(fontSize: 40),
        ),
      ],
    ),
  );
}
