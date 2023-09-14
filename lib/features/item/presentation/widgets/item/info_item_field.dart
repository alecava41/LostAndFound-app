import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  size: 22,
                  color: Theme.of(context).colorScheme.background,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.background),
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
