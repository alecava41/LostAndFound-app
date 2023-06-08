import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class ClickableCircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ClickableCircularButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Icon(
                icon,
                size: 30,
                color: PersonalizedColor.mainColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
