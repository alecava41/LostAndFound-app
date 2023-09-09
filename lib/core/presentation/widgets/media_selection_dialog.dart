import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/colors.dart';

class MediaSelectionDialog extends StatelessWidget {
  final VoidCallback onTapGallery;
  final VoidCallback onTapCamera;

  const MediaSelectionDialog({
    Key? key,
    required this.onTapGallery,
    required this.onTapCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: Text(AppLocalizations.of(context)!.mediaSelectionDialogTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PersonalizedColor.mainColor,
            ),
            onPressed: onTapGallery,
            child: Row(
              children: [
                const Icon(Icons.image),
                const SizedBox(
                  width: 5,
                ),
                Text(AppLocalizations.of(context)!.gallery),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PersonalizedColor.mainColor,
            ),
            onPressed: onTapCamera,
            child: Row(
              children: [
                const Icon(Icons.camera),
                const SizedBox(
                  width: 5,
                ),
                Text(AppLocalizations.of(context)!.camera),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
