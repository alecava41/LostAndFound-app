import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget carouselDetailedTutorialItem(String imagePath, String title, String description) {
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
           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
           textAlign: TextAlign.center,
         ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15,0,15,0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 15, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
