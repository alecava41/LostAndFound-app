import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/colors/custom_color.dart';
import '../../../utils/screen_size.dart';
import 'large_green_button.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback onRetry;
  final bool hasBottomBar;

  const ErrorPage({super.key, required this.onRetry, this.hasBottomBar = false});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  AppLocalizations.of(context)!.errorPageTitle,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  AppLocalizations.of(context)!.errorPageSubtitle,
                  style: TextStyle(fontSize: 15, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              PersonalizedLargeGreenButton(
                  onPressed: onRetry,
                  text: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh, color: Theme.of(context).colorScheme.onPrimary),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        AppLocalizations.of(context)!.retry,
                        style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
