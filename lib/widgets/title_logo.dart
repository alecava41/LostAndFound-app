import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget titleLogoVertical() {
  return Column(
    children: [
      Image.asset(
        'assets/images/logo.png',
        width: 200,
        height: 22.5.h,
      ),
      SizedBox(height: 2.5.h),
      const Text(
        "Lost&Found",
        style: TextStyle(fontSize: 40),
      ),
      SizedBox(height: 5.h),
    ],
  );
}

Widget titleLogoHorizontal() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        'assets/images/logo.png',
        width: 90,
        height: 90,
      ),
      const Text(
        "Lost&Found",
        style: TextStyle(fontSize: 40),
      ),
    ],
  );
}
