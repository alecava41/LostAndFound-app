import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

class PersonalizedLargeWhiteButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget text;

  const PersonalizedLargeWhiteButton({
    super.key,
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
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 0.5,
                ),
              ),
              child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ).copyWith(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Theme.of(context).extension<CustomColors>()!.buttonPressed!;
                        }
                        return Colors.transparent;
                      },
                    ),
                  ),
                  child: text),
            ),
          ),
        )
      ],
    );
  }
}
