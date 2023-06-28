import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/check_boxes_form.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_date_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';

class SearchScreenPage extends StatelessWidget {
  final bool foundChecked;
  final bool lostChecked;
  final String address;
  final String category;
  final String date;
  final ValueChanged<bool?>? onFoundCheckedChanged;
  final ValueChanged<bool?>? onLostCheckedChanged;
  final ValueChanged<DateTime?> onDataPicked;
  final ValueChanged<String> onSelectCategory;
  final ValueChanged<LatLng> onSelectPosition;

  const SearchScreenPage({
    super.key,
    required this.foundChecked,
    required this.lostChecked,
    required this.address,
    required this.category,
    required this.date,
    required this.onFoundCheckedChanged,
    required this.onLostCheckedChanged,
    required this.onDataPicked,
    required this.onSelectPosition,
    required this.onSelectCategory
  });

  @override
  Widget build(BuildContext context) {
    var showResultsButton = Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () => {print("Results")},
              style: ElevatedButton.styleFrom(
                backgroundColor: PersonalizedColor.mainColor,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                "Show result",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
            child: Text(
              "Search",
              style: TextStyle(fontSize: 40),
            ),
          ),
          PersonalizedCheckBoxesForm(
            foundChecked: foundChecked,
            lostChecked: lostChecked,
            onFoundCheckedChanged: onFoundCheckedChanged,
            onLostCheckedChanged: onLostCheckedChanged,
          ),
          const SizedBox(height: 40),
          SelectPositionButton(
              address: address, onTap: (value) => onSelectPosition(value)),
          const SizedBox(height: 40),
          CategorySelectionForm(onTap: (value) => {onSelectCategory(value)}, selectedCategory: category),
          const SizedBox(height: 40),
          DataSelectionForm(
            labelText: "Date",
            subLabelText: "e.g. date of upload",
            selectedData: date,
            onTap: () async {
              var pickedDate = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1984),
                lastDate: DateTime.now(),
                dateFormat: "MMMM-yyyy",
                locale: DateTimePickerLocale.en_us,
                looping: false,
                reverse: true,
              );
              if (pickedDate != null) {
                onDataPicked(pickedDate);
              }
            },
          ),
          const SizedBox(height: 40),
          showResultsButton
        ],
      ),
    );
  }
}
