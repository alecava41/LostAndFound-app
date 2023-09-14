import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';


class ClickableCircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String tooltipText;

  const ClickableCircularButton({
    super.key,
    required this.tooltipText,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      preferBelow: false,
      showDuration: 1.seconds,
      message: tooltipText,
      triggerMode: TooltipTriggerMode.longPress,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).extension<CustomColors>()!.background2,
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
                  semanticLabel: tooltipText,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
