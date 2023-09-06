import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/screen_size.dart';
import 'large_green_button.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback onRetry;
  final bool hasBottomBar;

  const ErrorPage({super.key, required this.onRetry, this.hasBottomBar = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.isBigSmartphoneDevice(context)
          ? (75 - (hasBottomBar ? 10 : 0)).h
          : ScreenSize.isMediumSmartphoneDevice(context)
          ? (75 - (hasBottomBar ? 10 : 0)).h
          : (70 - (hasBottomBar ? 5 : 0)).h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Image.asset("assets/images/error.png").image,
              height: 30.h,
              width: 70.w,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10,0,10,0),
              child: Text(
                'An error occurred while loading the data.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15,0,15,0),
              child: Text(
                'Please try again later',
                style: TextStyle(fontSize: 15, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            PersonalizedLargeGreenButton(
                onPressed: onRetry,
                text: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Retry",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
