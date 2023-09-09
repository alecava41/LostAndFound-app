import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';

import '../../../utils/colors.dart';
import '../tutorial/widgets/large_white_button.dart';

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
        PersonalizedLargeGreenButton(
          onPressed: onCancel,
          text: Text(
            AppLocalizations.of(context)!.cancel,
          ),
        ),
        PersonalizedLargeWhiteButton(
          onPressed: onConfirm,
          text: Text(
            AppLocalizations.of(context)!.yes,
            style: const TextStyle(color: PersonalizedColor.mainColor),
          ),
        ),
      ],
    );
  }
}
