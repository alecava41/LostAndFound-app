import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:sizer/sizer.dart';

class NoContentPage extends StatelessWidget {
  final VoidCallback onRetry;

  const NoContentPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage("assets/images/"),
              height: 40.h,
              width: 70.w,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "There aren't notifications waiting for you",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
