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
          height: showError && errorText != "" ? 115 : 90,
          color: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
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
                        activeColor: Theme.of(context).primaryColor,
                        value: foundChecked,
                        onChanged: onFoundCheckedChanged,
                        isError: showError && !foundChecked && !lostChecked,
                      ),
                      Text(
                        AppLocalizations.of(context)!.found,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Theme.of(context).primaryColor,
                        value: lostChecked,
                        onChanged: onLostCheckedChanged,
                        isError: showError && !lostChecked && !foundChecked,
                      ),
                      Text(AppLocalizations.of(context)!.lost, style: const TextStyle(fontSize: 18)),
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
