import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget carouselItem(String imagePath, String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Image(
            image: AssetImage(imagePath),
            height: 40.h,
            width: 70.w,
          ),
        ),
        Text(
           title,
           style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
           textAlign: TextAlign.center,
         ),
        Text(
          description,
          style: const TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
