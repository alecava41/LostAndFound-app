import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';

class CircularImage extends StatelessWidget {
  final String token;
  final String imageUrl;
  final double radius;
  final bool hasImage;

  const CircularImage({
    super.key,
    required this.token,
    required this.hasImage,
    required this.imageUrl,
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
        progressIndicatorBuilder: (context, url, downloadProgress) => const CustomCircularProgress(size: 20),
        errorWidget: (context, url, error)  { return const Icon(Icons.error);},
        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
        imageBuilder: (ctx, imageProvider) => CircleAvatar(
          radius: radius,
          backgroundImage: imageProvider,
        ),
      );
    } else {
      return Image.asset("assets/images/no-user.jpg");
    }
  }
}
