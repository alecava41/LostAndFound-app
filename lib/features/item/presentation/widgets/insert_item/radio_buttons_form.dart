import 'package:flutter/material.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../../utils/colors.dart';

class PersonalizedRadioButtonsForm extends StatelessWidget {
  final ItemType? selectedValue;
  final ValueChanged<ItemType?> onChanged;

  const PersonalizedRadioButtonsForm({super.key,
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
            const Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: Text(
                "The item has been:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              children: [
                Radio<ItemType>(
                  value: ItemType.lost,
                  groupValue: selectedValue,
                  onChanged: onChanged,
                  activeColor: PersonalizedColor.mainColor,
                ),
                const Text('Lost',style: TextStyle(fontSize: 18)),
                const SizedBox(width: 60),
                Radio<ItemType>(
                  value: ItemType.found,
                  groupValue: selectedValue,
                  onChanged: onChanged,
                  activeColor: PersonalizedColor.mainColor,
                ),
                const Text('Found',style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
