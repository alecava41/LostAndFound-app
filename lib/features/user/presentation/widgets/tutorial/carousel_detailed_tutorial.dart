import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utils/colors/custom_color.dart';

Widget carouselDetailedTutorialItem(BuildContext context, String imagePath, String title, String description) {
  return Column(
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
          style: TextStyle(fontSize: 15, color: Theme.of(context).extension<CustomColors>()!.usernameColor),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
