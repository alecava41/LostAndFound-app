import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../utils/colors/custom_color.dart';

// ignore: must_be_immutable
class UploadImageForm extends StatelessWidget {
  final VoidCallback onSelectUploadMethod;
  final VoidCallback onDeletePhoto;
  final String? imagePath;

  const UploadImageForm(
      {super.key,
      required this.onSelectUploadMethod,
      required this.onDeletePhoto,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    color: Theme.of(context).extension<CustomColors>()!.background2,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: imagePath == null
                        ? Center(
                            child: ElevatedButton(
                              onPressed: onSelectUploadMethod,
                              style: ElevatedButton.styleFrom(
                                surfaceTintColor: Theme.of(context).colorScheme.primary,
                                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.all(20),
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 0.4,
                                ),
                                elevation: 0,
                              ).copyWith(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Theme.of(context).colorScheme.onBackground.withOpacity(0.3);
                                    }
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.uploadImageButton,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          )
                        : Image.file(
                            File(imagePath!),
                            fit: BoxFit.cover,
                          ),
                  ),
                  if (imagePath != null)
                    Positioned(
                      right: 16,
                      bottom: 10,
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: FloatingActionButton(
                          onPressed: onDeletePhoto,
                          backgroundColor: Theme.of(context).colorScheme.error,
                          child: Icon(
                            Icons.delete,
                            size: 30,
                            color: Theme.of(context).colorScheme.onError,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
