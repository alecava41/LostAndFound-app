import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';

import '../../../utils/colors/custom_color.dart';

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
      surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
      backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: Text(AppLocalizations.of(context)!.mediaSelectionDialogTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PersonalizedLargeGreenButton(
            onPressed: onTapGallery,
            text: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.image,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  AppLocalizations.of(context)!.gallery,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          PersonalizedLargeGreenButton(
            onPressed: onTapCamera,
            text: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.camera,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(AppLocalizations.of(context)!.camera,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
