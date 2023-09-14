import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  final double size;
  final Color? color;

  const CustomCircularProgress({super.key, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        value: null,
        color: color ?? Theme.of(context).colorScheme.primary,
      ),
    ));
  }
}
