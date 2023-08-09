import 'package:flutter/material.dart';

Widget titleLogoVertical() {
  return Column(
    children: [
      Image.asset(
        'assets/images/logo-removebg-preview.png', // Replace with your image path
        width: 200,
        height: 200,
      ),
      const SizedBox(height: 20), // Add some spacing between the image and text
      const Text(
        "Lost&Found",
        style: TextStyle(fontSize: 40),
      ),
      const SizedBox(height: 40),
    ],
  );
}

Widget titleLogoHorizontal() {
  return SizedBox(
    width: 400,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/logo-removebg-preview.png', // Replace with your image path
          width: 90,
          height: 90,
        ),
        //const SizedBox(width: 8), // Add some spacing between the image and text
        const Text(
          "Lost&Found",
          style: TextStyle(fontSize: 40),
        ),
      ],
    ),
  );
}
