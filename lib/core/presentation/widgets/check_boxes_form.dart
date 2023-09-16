import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/colors/custom_color.dart';

class PersonalizedCheckBoxesForm extends StatelessWidget {
  final bool foundChecked;
  final bool lostChecked;
  final bool showError;
  final String errorText;
  final ValueChanged<bool?> onFoundCheckedChanged;
  final ValueChanged<bool?> onLostCheckedChanged;

  const PersonalizedCheckBoxesForm({
    super.key,
    required this.showError,
    required this.errorText,
    required this.foundChecked,
    required this.lostChecked,
    required this.onFoundCheckedChanged,
    required this.onLostCheckedChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 0,
        ),
        Container(
          height: showError && errorText != "" ? 123 : 92,
          color: Theme.of(context).extension<CustomColors>()!.background2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
                child: Text(
                  AppLocalizations.of(context)!.item(2),
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: foundChecked,
                        onChanged: onFoundCheckedChanged,
                        isError: showError && !foundChecked && !lostChecked,
                      ),
                      RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.found(1),
                          recognizer: TapGestureRecognizer()..onTap = () => onFoundCheckedChanged(!foundChecked),
                          style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: lostChecked,
                        onChanged: onLostCheckedChanged,
                        isError: showError && !lostChecked && !foundChecked,
                      ),
                      RichText(
                        text: TextSpan(
                          text: AppLocalizations.of(context)!.lost(1),
                          recognizer: TapGestureRecognizer()..onTap = () => onLostCheckedChanged(!lostChecked),
                          style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: showError && !foundChecked && !lostChecked
                    ? Text(
                        errorText,
                        style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                      )
                    : Container(),
              ),
              showError && !foundChecked && !lostChecked ? const SizedBox(height: 10) : Container()
            ],
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
