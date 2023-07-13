import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PersonalizedLargeGreenButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget text;

  const PersonalizedLargeGreenButton({super.key, 
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: PersonalizedColor.mainColor,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: text
            ),
          ),
        )
      ],
    );
  }
}