import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/colors.dart';

// ignore: must_be_immutable
class UploadImageForm extends StatelessWidget {
  final VoidCallback onSelectUploadMethod;
  final VoidCallback onDeletePhoto;
  final XFile? image;

  const UploadImageForm(
      {super.key, required this.onSelectUploadMethod, required this.onDeletePhoto, required this.image});

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
                    child: image == null
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
                              child: const Text(
                                "Upload a photo",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: PersonalizedColor.mainColor,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  if (image != null)
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
