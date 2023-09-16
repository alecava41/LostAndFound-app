import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

class PersonalizedRadioButtonsForm extends StatelessWidget {
  final ItemType? selectedValue;
  final ValueChanged<ItemType?>? onChanged;

  const PersonalizedRadioButtonsForm({
    super.key,
    required this.selectedValue,
    required this.onChanged,
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
              activeColor: onChanged != null ? Theme.of(context).colorScheme.primary : Colors.grey,
            ),
            RichText(
              text: TextSpan(
                text: AppLocalizations.of(context)!.lost(0),
                recognizer: TapGestureRecognizer()..onTap = () => onChanged!(ItemType.lost),
                style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(width: 60),
            Radio<ItemType>(
              value: ItemType.found,
              groupValue: selectedValue,
              onChanged: onChanged,
              activeColor: onChanged != null ? Theme.of(context).colorScheme.primary : Colors.grey,
            ),
            RichText(
              text: TextSpan(
                text: AppLocalizations.of(context)!.found(0),
                recognizer: TapGestureRecognizer()..onTap = () => onChanged!(ItemType.found),
                style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.onBackground),
              ),
            )
          ],
        ),
      ],
    );
  }
}
