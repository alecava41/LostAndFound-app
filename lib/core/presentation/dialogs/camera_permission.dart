import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';

void showCameraPermissionPermanentlyDeniedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.cameraPermissionDialogTitle),
        content: Text(
          AppLocalizations.of(context)!
              .cameraPermissionDialogContentPermanentlyDenied,
        ),
        actions: <Widget>[
          PersonalizedLargeGreenButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: Text(AppLocalizations.of(context)!.close))
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
        title: Text(AppLocalizations.of(context)!.cameraPermissionDialogTitle),
        content: Text(
            AppLocalizations.of(context)!.cameraPermissionDialogContentDenied),
        actions: <Widget>[
          PersonalizedLargeGreenButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: Text(AppLocalizations.of(context)!.close)),
        ],
      );
    },
  );
}
