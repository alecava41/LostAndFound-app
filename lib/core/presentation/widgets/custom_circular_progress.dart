import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class CustomCircularProgress extends StatelessWidget {
  final double size;
  final Color color;

  const CustomCircularProgress({super.key, required this.size, this.color = PersonalizedColor.mainColor});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        value: null,
        color: color,
      ),
    ));
  }
}
