import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';

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
          PersonalizedLargeGreenButton(onPressed: onTapGallery, text: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.image),
                const SizedBox(
                  width: 5,
                ),
                Text(AppLocalizations.of(context)!.gallery),
              ],
            ),),
          PersonalizedLargeGreenButton(onPressed: onTapCamera, text:Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.camera),
                const SizedBox(
                  width: 5,
                ),
                Text(AppLocalizations.of(context)!.camera),
              ],
            ),),
        ],
      ),
    );
  }
}
