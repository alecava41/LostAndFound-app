import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';

class CircularImage extends StatelessWidget {
  final String token;
  final String imageUrl;
  final double radius;
  final String errorAsset;
  final bool hasImage;

  const CircularImage({
    super.key,
    required this.token,
    required this.imageUrl,
    required this.hasImage,
    required this.errorAsset,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    if (hasImage) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        httpHeaders: {
          "Authorization": "Bearer $token",
        },
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            SizedBox(height: radius * 2, width: radius * 2, child: CustomCircularProgress(size: radius)),
        errorWidget: (context, url, error) => CircleAvatar(
          radius: radius,
          backgroundImage: Image.asset(errorAsset).image,
        ),
        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        imageBuilder: (ctx, imageProvider) => CircleAvatar(
          radius: radius,
          backgroundImage: imageProvider,
        ),
      );
    } else {
      return CircleAvatar(
        radius: radius,
        backgroundImage: Image.asset(errorAsset).image,
      );
    }
  }
}
