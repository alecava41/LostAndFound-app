import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/core/presentation/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/media_selection_dialog.dart';

class EditableCircularImage extends StatelessWidget {
  final ImagePicker picker = ImagePicker();

  final String token;
  final int userId;
  final bool isLoading;

  final Function onImageChange;
  final Function onImagePicking;
  final double radius;

  EditableCircularImage(
      {super.key,
      required this.token,
      required this.userId,
      required this.onImageChange,
      required this.radius,
      required this.onImagePicking,
      required this.isLoading});

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
        child: Stack(
          children: <Widget>[
            isLoading
                ? CustomCircularProgress(size: radius * 2)
                : CircularImage(
                    errorImage: noUserImagePath,
                    token: token,
                    imageUrl: "$baseUrl/api/users/$userId/image?t=${DateTime.now().millisecond}",
                    radius: radius,
                  ),
            isLoading
                ? Container()
                : Positioned(
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
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(
                          Icons.camera_alt,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    onImageChange(img?.path);
  }

  void onTapGallery(context) {
    Navigator.pop(context);
    onImagePicking();
    getImage(ImageSource.gallery);
  }

  void onTapCamera(context) {
    Navigator.pop(context);
    onImagePicking();
    getImage(ImageSource.camera);
  }
}
