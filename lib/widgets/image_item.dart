import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final String? imagePath;
  final String noImagePath = "assets/images/no-image.png";

  const ImageItem({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: imagePath == null
          ? Image(
              image: AssetImage(noImagePath),
            )
          : Image(image: AssetImage(imagePath!)),
    );
  }
}
