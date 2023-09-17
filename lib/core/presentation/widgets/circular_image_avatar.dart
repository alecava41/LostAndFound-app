import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String token;
  final String imageUrl;
  final double radius;
  final String errorImage;

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
      backgroundImage: AssetImage(errorImage),
      foregroundImage: NetworkImage(
        imageUrl,
        headers: {"Authorization": "Bearer $token"},
      ),
    );
  }
}
