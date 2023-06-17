import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/check_boxes_form.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_date_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';

class SearchScreenPage extends StatelessWidget {
  final bool foundChecked;
  final bool lostChecked;
  final int range;
  final String address;
  final String category;
  final String date;
  final ValueChanged<bool?>? onFoundCheckedChanged;
  final ValueChanged<bool?>? onLostCheckedChanged;

  const SearchScreenPage({
    super.key,
    required this.foundChecked,
    required this.lostChecked,
    required this.range,
    required this.address,
    required this.category,
    required this.date,
    required this.onFoundCheckedChanged,
    required this.onLostCheckedChanged,
  });

  @override
  Widget build(BuildContext context) {
    var checkBoxes = Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Container(
          height: 90,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  'Search items:',
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
                      ),
                      const Text('Lost', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
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
              address: address, range: range, onTap: () => {print("Ciao")}),
          const SizedBox(height: 40),
          CategorySelectionForm(onTap: () {}, selectedCategory: "Qui"),
          const SizedBox(height: 40),
          DataSelectionForm(
              labelText: "Date",
              subLabelText: "e.g. date of upload",
              selectedData: date,
              onTap: () {}),
          const SizedBox(height: 40),
          showResultsButton
        ],
      ),
    );
  }
}
