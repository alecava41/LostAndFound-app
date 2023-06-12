import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class ClickableCircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ClickableCircularButton({super.key, 
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
  return Container(
    width: 60,
    height: 60,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(30),
        child: Center(
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
