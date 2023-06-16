import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class PersonalizedRadioButtons extends StatelessWidget {
  final int? selectedValue;
  final ValueChanged<int?> onChanged;

  const PersonalizedRadioButtons({
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          value: 1,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: PersonalizedColor.mainColor,
        ),
        Text('Lost',style: TextStyle(fontSize: 18)),
        SizedBox(width: 60),
        Radio<int>(
          value: 2,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: PersonalizedColor.mainColor,
        ),
        Text('Found',style: TextStyle(fontSize: 18)),
      ],
    );
  }
}

