import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

void showCameraPermissionPermanentlyDeniedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
        surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
        title: Text(AppLocalizations.of(context)!.cameraPermissionDialogTitle),
        content: Text(
          AppLocalizations.of(context)!.cameraPermissionDialogContentPermanentlyDenied,
        ),
        actions: <Widget>[
          PersonalizedLargeGreenButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: Text(
                AppLocalizations.of(context)!.close,
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ))
        ],
      );
    },
  );
}

void showCameraPermissionDeniedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
        surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
        title: Text(AppLocalizations.of(context)!.cameraPermissionDialogTitle),
        content: Text(AppLocalizations.of(context)!.cameraPermissionDialogContentDenied),
        actions: <Widget>[
          PersonalizedLargeGreenButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: Text(AppLocalizations.of(context)!.close,
                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimary))),
        ],
      );
    },
  );
}
