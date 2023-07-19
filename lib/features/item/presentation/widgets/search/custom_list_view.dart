import 'package:flutter/material.dart';

import 'custom_card_search.dart';

class CustomScrollableListView extends StatelessWidget {
  final List<CustomCardSearch> itemList;

  const CustomScrollableListView({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (itemList.length / 2).ceil(),
      itemBuilder: (BuildContext context, int index) {
        final int startIndex = index * 2;
        final int endIndex = startIndex + 1;

        // Check if the current row has one or two items
        final bool hasTwoItems = endIndex < itemList.length;

        return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: itemList[startIndex]),
              ),
            ),
            if (hasTwoItems)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: itemList[endIndex]),
                ),
              ),
          ],
        );
      },
    );
  }
}
