import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/colors/custom_color.dart';

class NoContentPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final bool hasBottomBar;

  const NoContentPage(
      {super.key, required this.image, required this.title, required this.subtitle, this.hasBottomBar = false});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Image.asset(image).image,
              height: 30.h,
              width: 70.w,
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
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 15, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
