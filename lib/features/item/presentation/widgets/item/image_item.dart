import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';

import '../../../../../core/presentation/widgets/image_dialog.dart';

class ImageItem extends StatelessWidget {
  final int itemId;
  final String token;

  const ImageItem({Key? key, required this.itemId, required this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imageUrl = "http://localhost:5000/api/items/$itemId/image";

    return ImageDialogWidget(
      imageUrl: imageUrl,
      token: '',
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          httpHeaders: {
            "Authorization": "Bearer $token",
          },
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        ),
      ),
    );
  }
}
