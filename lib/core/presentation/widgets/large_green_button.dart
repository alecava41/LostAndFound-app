import 'package:flutter/material.dart';

import '../../../utils/colors/custom_color.dart';


class PersonalizedLargeGreenButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isActive;
  final Widget text;

  const PersonalizedLargeGreenButton({
    super.key,
    required this.onPressed,
    this.isActive = true,
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
                  backgroundColor: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).extension<CustomColors>()!.splashGreyColor,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ).copyWith(
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Theme.of(context).colorScheme.onPrimary.withOpacity(0.1);
                      }
                      return Colors.transparent;
                    },
                  ),
                ),
                child: text),
          ),
        )
      ],
    );
  }
}
