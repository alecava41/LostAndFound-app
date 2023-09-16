import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';


class InfoItemField extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final VoidCallback? onTapField;

  const InfoItemField({super.key, required this.icon, required this.title, required this.content, this.onTapField});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).extension<CustomColors>()!.background2,
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 22,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      text: content,
                      style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
                      children: onTapField != null
                          ? <TextSpan>[
                              TextSpan(text: " (", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground)),
                              TextSpan(
                                text: AppLocalizations.of(context)!.openMap,
                                recognizer: TapGestureRecognizer()..onTap = onTapField,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: onTapField != null ? Colors.blueAccent : Theme.of(context).colorScheme.onBackground,
                                  decoration: onTapField != null ? TextDecoration.underline : null,
                                ),
                              ),
                              TextSpan(text: ")", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground))
                            ]
                          : [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
