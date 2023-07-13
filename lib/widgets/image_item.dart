import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/image_dialog_image.dart';

class ImageItem extends StatelessWidget {
  final String imagePath;
 

  const ImageItem({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageDialogWidget(
      userImagePath: imagePath,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image(image: AssetImage(imagePath!)),
      ),
    );
  }
}
