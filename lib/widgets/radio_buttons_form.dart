import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/radio_buttons.dart';

class PersonalizedRadioButtonsForm extends StatelessWidget {
  final String text;
  final int? selectedValue;
  final ValueChanged<int?> onChanged;

  const PersonalizedRadioButtonsForm({super.key, 
    required this.text,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            PersonalizedRadioButtons(
              selectedValue: selectedValue,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
