import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../utils/colors.dart';

// ignore: must_be_immutable
class UploadImageForm extends StatelessWidget {
  final VoidCallback onSelectUploadMethod;
  final VoidCallback onDeletePhoto;
  final String? imagePath;

  const UploadImageForm(
      {super.key, required this.onSelectUploadMethod, required this.onDeletePhoto, required this.imagePath});

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
                    color: Colors.white,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: imagePath == null
                        ? Center(
                            child: ElevatedButton(
                              onPressed: onSelectUploadMethod,
                              style: ElevatedButton.styleFrom(
                                surfaceTintColor: PersonalizedColor.mainColor,
                                backgroundColor: Colors.white,
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.all(20),
                                side: const BorderSide(
                                  color: PersonalizedColor.mainColor,
                                  width: 0.5,
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.uploadImageButton,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: PersonalizedColor.mainColor,
                                ),
                              ),
                            ),
                          )
                        : Image.file(File(imagePath!), fit: BoxFit.cover,),
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
                          backgroundColor: Colors.red,
                          child: const Icon(
                            Icons.delete,
                            size: 30,
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
