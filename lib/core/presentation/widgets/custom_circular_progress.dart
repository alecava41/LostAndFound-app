import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  final double size;

  const CustomCircularProgress({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        SizedBox(
          height: size,
          width: size,
          child: const CircularProgressIndicator(value: null,),
        )
    );
  }
}
