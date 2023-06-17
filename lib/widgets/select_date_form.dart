import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DataSelectionForm extends StatelessWidget {
  final String labelText;
  final String subLabelText;
  final String selectedData;
  final VoidCallback onTap;

  const DataSelectionForm({super.key, 
    required this.labelText,
    required this.subLabelText,
    required this.selectedData,
    required this.onTap,
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
            onTap: onTap,
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
}
