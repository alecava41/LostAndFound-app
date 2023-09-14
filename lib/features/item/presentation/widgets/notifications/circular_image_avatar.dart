import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

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
      return CircleAvatar(
        radius: radius,
        backgroundImage: Image.network(
          imageUrl,
          headers: {"Authorization": "Bearer $token"},
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return CustomCircularProgress(size: radius);
          },
          errorBuilder: (context, error, stackTrace) => CircleAvatar(
            radius: radius,
            backgroundImage: Image.asset(
              noUserImagePath,
              fit: BoxFit.cover,
            ).image,
          ),
        ).image,
      );
  }
}
