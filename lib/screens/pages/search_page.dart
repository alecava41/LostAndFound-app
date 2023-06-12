import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

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

    var position = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Ink(
          color: Colors.white,
          child: InkWell(
            onTap: () => {print("Bellaciao")},
            borderRadius: BorderRadius.circular(0),
            child: Container(
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Position",
                          style: TextStyle(fontSize: 25),
                        ),
                        const Text(
                            "e.g. where the item has been found or lost"),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: PersonalizedColor.mainColor,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  address == ""
                                      ? "Position not chosen yet"
                                      : address,
                                  style: const TextStyle(
                                      color: PersonalizedColor.mainColor,
                                      fontSize: 15),
                                ),
                                if (range > 0)
                                  Text(
                                    "within $range km",
                                    style: const TextStyle(
                                        color: PersonalizedColor.mainColor),
                                  )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 50,
                  ),
                ],
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

    var categorySection = InkWell(
      onTap: () => {print("DAje ROMa")},
      child: Column(
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Ink(
            color: Colors.white,
            child: InkWell(
              onTap: () => {print("DAje ROMa")},
              borderRadius: BorderRadius.circular(0),
              child: Container(
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Category",
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        children: [
                          if (category != "")
                            Text(
                              "$category",
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: PersonalizedColor.mainColor),
                            ),
                          const Icon(
                            Icons.chevron_right,
                            size: 50,
                          ),
                        ],
                      )
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
      ),
    );

    var dateSection = Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Ink(
          color: Colors.white,
          child: InkWell(
            onTap: () => {print("DAje ROMa")},
            borderRadius: BorderRadius.circular(0),
            child: Container(
              height: 65,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text("e.g. date of uploading")
                      ],
                    ),
                    Row(
                      children: [
                        if (date != "")
                          Text(
                            "After $date",
                            style: const TextStyle(
                                fontSize: 15,
                                color: PersonalizedColor.mainColor),
                          ),
                        const Icon(
                          Icons.chevron_right,
                          size: 50,
                        ),
                      ],
                    )
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
          checkBoxes,
          const SizedBox(height: 40),
          position,
          const SizedBox(height: 40),
          categorySection,
          const SizedBox(height: 40),
          dateSection,
          const SizedBox(height: 40),
          showResultsButton
        ],
      ),
    );
  }
}
