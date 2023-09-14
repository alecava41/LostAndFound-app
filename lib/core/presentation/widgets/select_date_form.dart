import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:intl/intl.dart';

import '../../../utils/colors/custom_color.dart';

class DateSelectionForm extends StatelessWidget {
  final DateTime? date;
  final ValueChanged<DateTime> onTap;

  const DateSelectionForm({
    super.key,
    required this.onTap,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 0,
        ),
        Ink(
          color: Theme.of(context).extension<CustomColors>()!.background2,
          child: InkWell(
            onTap: () => onButtonTap(context),
            borderRadius: BorderRadius.circular(0),
            child: SizedBox(
              height: 65,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.date,
                          style: const TextStyle(fontSize: 22),
                        ),
                        Text(
                          AppLocalizations.of(context)!.dateFormEntrySubtitle,
                          style: TextStyle(color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (date != null)
                          Text(
                            AppLocalizations.of(context)!.dateFormEntryValue(DateFormat.yMMMM().format(date!)),
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        const Icon(
                          Icons.chevron_right,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }

  void onButtonTap(context) async {
    var pickedDate = await DatePicker.showSimpleDatePicker(
      context,
      titleText: AppLocalizations.of(context)!.selectDate,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(1984),
      lastDate: DateTime.now(),
      dateFormat: "MMMM-yyyy",
      locale: AppLocalizations.of(context)!.localeName == "it" ? DateTimePickerLocale.it : DateTimePickerLocale.en_us,
      looping: false,
      reverse: true,
    );
    if (pickedDate != null) {
      onTap(pickedDate);
    }
  }
}
