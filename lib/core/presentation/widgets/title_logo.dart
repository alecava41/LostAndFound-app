import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sizer/sizer.dart';

Widget titleLogoVertical() {
  return Column(
    children: [
      Image.asset(
        'assets/images/logo.png',
        width: 200,
        height: 200,
      ),
      SizedBox(height: 1.h),
      const Text(
        "Lost&Found",
        style: TextStyle(fontSize: 40),
      ),
      SizedBox(height: 2.h),
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
