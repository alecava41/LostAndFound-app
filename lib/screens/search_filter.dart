import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/check_boxes_form.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';

import '../utils/utility.dart';
import '../widgets/large_green_button.dart';
import '../widgets/select_date_form.dart';

class FilterSearchScreen extends StatefulWidget {
  final bool foundChecked;
  final bool lostChecked;
  final LatLng? selectedPosition;
  final String category;
  final DateTime? date;

  const FilterSearchScreen({
    Key? key,
    required this.foundChecked,
    required this.lostChecked,
    required this.selectedPosition,
    required this.category,
    required this.date,
  }) : super(key: key);

  @override
  State<FilterSearchScreen> createState() => _FilterSearchScreenState();
}

class _FilterSearchScreenState extends State<FilterSearchScreen> {
  late bool foundChecked;
  late bool lostChecked;
  late LatLng? selectedPosition;
  late String category;
  late DateTime? date;

  @override
  void initState() {
    super.initState();
    foundChecked = widget.foundChecked;
    lostChecked = widget.lostChecked;
    selectedPosition = widget.selectedPosition;
    category = widget.category;
    date = widget.date;
  }

  var showResultsButton = PersonalizedLargeGreenButton(
    onPressed: () => {print("Results")},
    text: const Text(
      "Show result",
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalizedColor.backGroundColor,
      appBar: AppBar(
        title: const Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: ElevatedButton(
                    onPressed: onDeleteAllPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PersonalizedColor.mainColor,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                    ),
                    child: const Text(
                      "DELETE ALL",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              PersonalizedCheckBoxesForm(
                foundChecked: foundChecked,
                lostChecked: lostChecked,
                onFoundCheckedChanged: (value) => onFoundCheckedChanged(value),
                onLostCheckedChanged: (value) => onLostCheckedChanged(value),
              ),
              const SizedBox(height: 40),
              SelectPositionButton(
                  address: selectedPosition != null
                      ? "${selectedPosition?.latitude.toString()}, ${selectedPosition?.longitude.toString()}"
                      : "",
                  onTap: ((value) => onSelectPositionTap(value))),
              const SizedBox(height: 40),
              CategorySelectionForm(
                  onTap: (value) => onCategorySelectionTap(value),
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
            ]),
          )),
    );
  }

  onFoundCheckedChanged(bool? value) {
    setState(() {
      foundChecked = !foundChecked;
    });
  }

  onLostCheckedChanged(bool? value) {
    setState(() {
      lostChecked = !lostChecked;
    });
  }

  onSelectPositionTap(LatLng value) {
    setState(() {
      selectedPosition = value;
    });
  }

  onCategorySelectionTap(String value) {
    setState(() {
      category = value;
    });
  }

  onDataPicked(DateTime value) {
    setState(() {
      date = value;
    });
  }

  void onDeleteAllPressed() {
    setState(() {
      foundChecked = false;
      lostChecked = false;
      selectedPosition = null;
      category = "";
      date = null;
    });
  }
}
