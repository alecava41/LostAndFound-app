import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imagePath;
  final double radius;

  const CircularImage({super.key,
    required this.imagePath,
    this.radius = 50,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imagePath),
    );
  }
}