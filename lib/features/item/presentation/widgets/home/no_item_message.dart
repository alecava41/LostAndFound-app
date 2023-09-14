import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

import '../../../../../utils/screen_size.dart';

class NoItemMessage extends StatelessWidget {
  final String message;
  final String buttonText;
  final VoidCallback callback;
  final IconData icon;

  const NoItemMessage(
      {super.key, required this.message, required this.buttonText, required this.icon, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.isBigSmartphoneDevice(context)
          ? 230
          : ScreenSize.isMediumSmartphoneDevice(context)
              ? 200
              : 170,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).extension<CustomColors>()!.background2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // TODO replace with image!
          Icon(
            icon,
            size: ScreenSize.isBigSmartphoneDevice(context)
                ? 80
                : ScreenSize.isMediumSmartphoneDevice(context)
                    ? 70
                    : 50,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ScreenSize.isBigSmartphoneDevice(context)
                  ? 18
                  : ScreenSize.isMediumSmartphoneDevice(context)
                      ? 17
                      : 16,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          PersonalizedLargeGreenButton(
              onPressed: callback,
              text: Text(
                buttonText,
                style: TextStyle(
                    fontSize: ScreenSize.isBigSmartphoneDevice(context)
                        ? 20
                        : ScreenSize.isMediumSmartphoneDevice(context)
                            ? 18
                            : 16,

                color: Theme.of(context).colorScheme.onPrimary),
              ))
        ],
      ),
    );
  }
}
