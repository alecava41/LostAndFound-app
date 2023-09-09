import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/colors.dart';

class ConfirmExitDialog extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  const ConfirmExitDialog({
    Key? key,
    required this.onCancel,
    required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.confirmExitDialogTitle),
      content: Text(AppLocalizations.of(context)!.confirmExitDialogContent),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: const TextStyle(color: PersonalizedColor.mainColor),
          ),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(
            AppLocalizations.of(context)!.yes,
            style: const TextStyle(color: PersonalizedColor.mainColor),
          ),
        ),
      ],
    );
  }
}
