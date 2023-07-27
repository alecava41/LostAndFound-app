import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String token;
  final String imageUrl;
  final double radius;

  const CircularImage({
    super.key,
    required this.token,
    required this.imageUrl,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: {
        "Authorization": "Bearer $token",
      },
       progressIndicatorBuilder: (context, url, downloadProgress) =>
           const CircularProgressIndicator(value: null),
       errorWidget: (context, url, error)  { return const Icon(Icons.error);},
      imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
      imageBuilder: (ctx, imageProvider) => CircleAvatar(
        radius: radius,
        backgroundImage: imageProvider,
      ),
    );
  }
}
