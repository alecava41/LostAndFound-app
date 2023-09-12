import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/image_dialog.dart';

class ImageItem extends StatelessWidget {
  final int itemId;
  final bool hasImage;
  final String token;

  const ImageItem({Key? key, required this.itemId, required this.token, required this.hasImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasImage) {
      final String imageUrl = "$baseUrl/api/items/$itemId/image";

      return ImageDialogWidget(
        imageUrl: imageUrl,
        token: token,
        errorImage: Image.asset(
          noItemImagePath,
          fit: BoxFit.cover,
        ),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            headers: {"Authorization": "Bearer $token"},
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return const CustomCircularProgress(size: 150);
            },
            errorBuilder: (context, error, stackTrace) => Image.asset(
              noItemImagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image.asset(
          noItemImagePath,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
