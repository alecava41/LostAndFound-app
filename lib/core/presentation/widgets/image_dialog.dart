import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';

class ImageDialogWidget extends StatelessWidget {
  final String imageUrl;
  final String token;
  final Widget child;

  const ImageDialogWidget({
    super.key,
    required this.imageUrl,
    required this.token,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    httpHeaders: {
                      "Authorization": "Bearer $token",
                    },
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        const CircularProgressIndicator(value: null),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                  ),
                ),
              );
            },
          );
        },
        child: child);
  }
}
