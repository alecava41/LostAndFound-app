import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart';

// ignore: must_be_immutable
class UploadImageForm extends StatelessWidget {
  final VoidCallback onUploadPhoto;
  final VoidCallback onDeletePhoto;
  final XFile? image;
  String? imagePath;

  UploadImageForm(
      {super.key,
      required this.onUploadPhoto,
      required this.onDeletePhoto,
      required this.image,
      this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: Colors.transparent,
              //height: 300,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    color: Colors.white,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: image == null && imagePath == null
                        ? Center(
                            child: ElevatedButton(
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
                            ),
                          )
                        : image == null
                            ? Image.asset(
                                imagePath!,
                                fit: BoxFit.cover,
                              )
                            : Image.file(
                                File(image!.path),
                                fit: BoxFit.cover,
                              ),
                  ),
                  if (image != null || imagePath != null)
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
