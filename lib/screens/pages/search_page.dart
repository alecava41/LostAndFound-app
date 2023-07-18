import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/check_boxes_form.dart';
import 'package:lost_and_found/widgets/large_green_button.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_date_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';

import '../../utils/utility.dart';

class SearchScreenPage extends StatelessWidget {
  final bool foundChecked;
  final bool lostChecked;
  final String address;
  final String category;
  final DateTime? date;
  final ValueChanged<bool?>? onFoundCheckedChanged;
  final ValueChanged<bool?>? onLostCheckedChanged;
  final ValueChanged<DateTime?> onDataPicked;
  final ValueChanged<String> onSelectCategory;
  final ValueChanged<LatLng> onSelectPosition;
  final VoidCallback onDeleteAllPressed;

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
    required this.onSelectCategory,
    required this.onDeleteAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    var showResultsButton = PersonalizedLargeGreenButton(
      onPressed: () => {print("Results")},
      text: const Text(
        "Show result",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 20, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Search",
                  style: TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                  onPressed: onDeleteAllPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PersonalizedColor.mainColor,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
                  child: const Text(
                    "DELETE ALL",
                  ),
                ),
              ],
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
          CategorySelectionForm(
              onTap: (value) => {onSelectCategory(value)},
              selectedCategory: category),
          const SizedBox(height: 40),
          DataSelectionForm(
            labelText: "Date",
            subLabelText: "e.g. date of upload",
            selectedData: date != null
                ? "${Utility.getMonth(date!.month)} ${date!.year}"
                : "",
            onTap: (value) => onDataPicked(value),
            startingDate: date,
          ),
          const SizedBox(height: 40),
          showResultsButton
        ],
      ),
    );
  }
}
