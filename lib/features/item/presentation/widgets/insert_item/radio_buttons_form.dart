import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../../utils/colors.dart';

class PersonalizedRadioButtonsForm extends StatelessWidget {
  final ItemType? selectedValue;
  final ValueChanged<ItemType?>? onChanged;

  const PersonalizedRadioButtonsForm({
    super.key,
    required this.selectedValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Radio<ItemType>(
              value: ItemType.lost,
              groupValue: selectedValue,
              onChanged: onChanged,
              activeColor: PersonalizedColor.mainColor,
            ),
            Text(AppLocalizations.of(context)!.lost, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 60),
            Radio<ItemType>(
              value: ItemType.found,
              groupValue: selectedValue,
              onChanged: onChanged,
              activeColor: PersonalizedColor.mainColor,
            ),
            Text(AppLocalizations.of(context)!.found, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ],
    );
  }
}
