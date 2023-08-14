import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

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
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Container(
          height: showError && errorText != "" ? 105 : 90,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                child: Text(
                  'Items',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: PersonalizedColor.mainColor,
                        value: foundChecked,
                        onChanged: onFoundCheckedChanged,
                        isError: showError && !foundChecked && !lostChecked,
                      ),
                      const Text(
                        'Found',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: PersonalizedColor.mainColor,
                        value: lostChecked,
                        onChanged: onLostCheckedChanged,
                        isError: showError && !lostChecked && !foundChecked,
                      ),
                      const Text('Lost', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: showError && !foundChecked && !lostChecked
                    ? Text(
                        errorText,
                        style: TextStyle(color: Colors.redAccent.shade700, fontSize: 12),
                      )
                    : Container(),
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
