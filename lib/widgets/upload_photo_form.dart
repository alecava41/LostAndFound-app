import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart';

class UploadImageForm extends StatelessWidget {
  final VoidCallback onUploadPhoto;
  final VoidCallback onDeletePhoto;
  final XFile? image;

  const UploadImageForm({super.key, 
    required this.onUploadPhoto,
    required this.onDeletePhoto,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: Colors.transparent,
              height: 200,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: image == null
                          ? ElevatedButton(
                              onPressed: onUploadPhoto,
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
                              child: const Text(
                                "Upload a photo",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: PersonalizedColor.mainColor,
                                ),
                              ),
                            )
                          : Image.file(File(image!.path)),
                    ),
                  ),
                  if (image != null)
                    Positioned(
                      right: 10,
                      bottom: 5,
                      child: FloatingActionButton(
                        onPressed: onDeletePhoto,
                        backgroundColor: PersonalizedColor.mainColor,
                        child: const Icon(Icons.delete),
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
