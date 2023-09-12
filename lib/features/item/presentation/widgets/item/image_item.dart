import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../../utils/utility.dart';

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
        key: Key(randomString()),
        imageUrl: imageUrl,
        token: token,
        errorImage: Image.asset(noItemImagePath, fit: BoxFit.cover,),
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
            progressIndicatorBuilder: (context, url, downloadProgress) => const CustomCircularProgress(size: 150),
            errorWidget: (context, url, error) => Image.asset(noItemImagePath, fit: BoxFit.cover,),
            imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
          ),
        ),
      );
    } else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image.asset(noItemImagePath, fit: BoxFit.cover,),
      );
    }
  }
}
