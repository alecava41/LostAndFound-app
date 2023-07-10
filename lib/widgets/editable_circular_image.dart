import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/utils/colors.dart';

import 'media_selection_dialog.dart';

class EditableCircularImage extends StatelessWidget {
  final XFile? imageFile;
  final String imagePath;
  final ImagePicker picker = ImagePicker();
  final Function onPhotoChange;
  final double radius;

  EditableCircularImage(
      {super.key,
      required this.imagePath,
      required this.imageFile,
      required this.onPhotoChange,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return MediaSelectionDialog(onTapGallery: () {
                onTapGallery(context);
              }, onTapCamera: () {
                onTapCamera(context);
              });
            });
      },
      child: Center(
        child: Stack(children: <Widget>[
          CircleAvatar(
            radius: radius,
            backgroundImage: imageFile == null
                ? AssetImage(imagePath) as ImageProvider<Object>?
                : FileImage(File(imageFile!.path)),
          ),
          Positioned(
            bottom: 2.0,
            right: 5.0,
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return MediaSelectionDialog(onTapGallery: () {
                        onTapGallery(context);
                      }, onTapCamera: () {
                        onTapCamera(context);
                      });
                    });
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: PersonalizedColor.mainColor,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 25.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    print("object");
    onPhotoChange(img);
  }

  void onTapGallery(context) {
    Navigator.pop(context);
    getImage(ImageSource.gallery);
  }

  void onTapCamera(context) {
    Navigator.pop(context);
    getImage(ImageSource.camera);
  }
}
