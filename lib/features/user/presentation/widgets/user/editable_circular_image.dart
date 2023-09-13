import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/media_selection_dialog.dart';

class EditableCircularImage extends StatelessWidget {
  final ImagePicker picker = ImagePicker();

  final String token;
  final int userId;

  final Function onImageChange;
  final double radius;

  EditableCircularImage(
      {super.key,
      required this.token,
      required this.userId,
      required this.onImageChange,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return MediaSelectionDialog(
                  onTapGallery: () => onTapGallery(context), onTapCamera: () => onTapCamera(context));
            });
      },
      child: Center(
        child: Stack(children: <Widget>[
          CircleAvatar(
                  radius: radius,
                  backgroundImage: Image.network(
                    "$baseUrl/api/users/$userId/image",
                    headers: {"Authorization": "Bearer $token"},
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        height: radius * 2,
                        width: radius * 2,
                        child: CustomCircularProgress(size: radius),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      noUserImagePath,
                      fit: BoxFit.cover,
                    ),
                  ).image,
                ),
          Positioned(
            bottom: 2.0,
            right: 5.0,
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return MediaSelectionDialog(
                          onTapGallery: () => onTapGallery(context), onTapCamera: () => onTapCamera(context));
                    });
              },
              child: const CircleAvatar(
                radius: 16,
                backgroundColor: PersonalizedColor.mainColor,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  // Upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    onImageChange(img?.path);
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
