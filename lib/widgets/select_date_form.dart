import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';

import '../utils/colors.dart';

class DataSelectionForm extends StatelessWidget {
  final String labelText;
  final String subLabelText;
  final String selectedData;
  final DateTime? startingDate;
  final ValueChanged<DateTime> onTap;

  const DataSelectionForm({
    super.key,
    required this.labelText,
    required this.subLabelText,
    required this.selectedData,
    required this.onTap,
    this.startingDate,
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
        Ink(
          color: Colors.white,
          child: InkWell(
            onTap: () => onButtonTap(context),
            borderRadius: BorderRadius.circular(0),
            child: Container(
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
                          labelText,
                          style: const TextStyle(fontSize: 25),
                        ),
                        Text(subLabelText),
                      ],
                    ),
                    Row(
                      children: [
                        if (selectedData.isNotEmpty)
                          Text(
                            "After $selectedData",
                            style: const TextStyle(
                              fontSize: 15,
                              color: PersonalizedColor.mainColor,
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
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }

  void onButtonTap(context) async {
    var pickedDate = await DatePicker.showSimpleDatePicker(
      context,
      initialDate: startingDate ?? DateTime.now(),
      firstDate: DateTime(1984),
      lastDate: DateTime.now(),
      dateFormat: "MMMM-yyyy",
      locale: DateTimePickerLocale.en_us,
      looping: false,
      reverse: true,
    );
    if (pickedDate != null) {
      onTap(pickedDate);
    }
  }
}
