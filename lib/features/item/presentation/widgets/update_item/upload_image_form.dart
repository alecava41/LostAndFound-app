import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/constants.dart';

class UploadImageForm extends StatelessWidget {
  final int itemId;
  final String token;
  final VoidCallback onSelectUploadMethod;
  final VoidCallback onDeletePhoto;
  final XFile? image;
  final String? imagePath;
  bool hasImage = true;

  UploadImageForm(
      {super.key,
      required this.itemId,
      required this.token,
      required this.onSelectUploadMethod,
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
                    child: CachedNetworkImage(
                      imageUrl: "$baseUrl/api/items/$itemId/image",
                      fit: BoxFit.cover,
                      httpHeaders: {
                        "Authorization": "Bearer $token",
                      },
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          const CircularProgressIndicator(value: null),
                      errorWidget: (context, url, error) {
                        hasImage = false;

                        if (image == null && imagePath == null) {
                          Center(
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
                          );
                        } else {
                          if (image == null) {
                            return Image.asset(
                              imagePath!,
                              fit: BoxFit.cover,
                            );
                          } else {
                            if (!kIsWeb) {
                              return Image.file(
                                File(image!.path),
                                fit: BoxFit.cover,
                              );
                            } else {
                              return Container();
                            }
                          }
                        }
                        return const Icon(Icons.error);
                      },
                      imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                    ),
                  ),
                  if (image != null || imagePath != null || hasImage)
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
