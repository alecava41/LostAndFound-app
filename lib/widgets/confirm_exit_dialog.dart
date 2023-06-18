import 'package:flutter/material.dart';

import '../utils/colors.dart';

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
      title: const Text('Confirm Exit'),
      content: const Text(
        'Exiting the insertion will delete your current progress. Are you sure you want to exit?'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: const Text(
            'Cancel',
            style: TextStyle(color: PersonalizedColor.mainColor),
          ),
        ),
        TextButton(
          onPressed: onConfirm,
          child: const Text(
            'Yes',
            style: TextStyle(color: PersonalizedColor.mainColor),
          ),
        ),
      ],
    );
  }
}
