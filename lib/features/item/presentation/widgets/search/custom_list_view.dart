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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: itemList[startIndex],
            ),
            if (hasTwoItems)
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: itemList[endIndex],
              ),
            if (!hasTwoItems)
              const Padding(
                padding: EdgeInsets.all(7.0),
                child: SizedBox(width: 165),
              ),
          ],
        );
      },
    );
  }
}
