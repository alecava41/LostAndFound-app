import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showCameraPermissionPermanentlyDeniedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.cameraPermissionDialogTitle),
        content: Text(AppLocalizations.of(context)!.cameraPermissionDialogContentPermanentlyDenied,
        ),
        actions: <Widget>[
          TextButton(
            child: Text(AppLocalizations.of(context)!.close),
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();
            },
          ),
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
        content: Text(AppLocalizations.of(context)!.cameraPermissionDialogContentDenied),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      );
    },
  );
}