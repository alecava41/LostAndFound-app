import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';

class CircularImage extends StatelessWidget {
  final String token;
  final String imageUrl;
  final double radius;
  final Image errorImage;

  const CircularImage({
    super.key,
    required this.token,
    required this.imageUrl,
    required this.errorImage,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        headers: {"Authorization": "Bearer $token"},
        errorBuilder: (ctx, error, trace) => CircleAvatar(
          radius: radius,
          backgroundImage: errorImage.image,
        ),
        loadingBuilder: (ctx, error, trace) =>
            SizedBox(height: radius * 2, width: radius * 2, child: CustomCircularProgress(size: radius)),
      ).image,
    );
  }
}
