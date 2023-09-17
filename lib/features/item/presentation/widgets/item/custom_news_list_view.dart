import 'package:flutter/material.dart';

import 'custom_card_news.dart';

class CustomScrollableNewsListView extends StatelessWidget {
  final List<CustomCardNews> newsList;

  const CustomScrollableNewsListView({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: (newsList.length / 2).ceil(),
      itemBuilder: (BuildContext context, int index) {
        final int startIndex = index * 2;
        final int endIndex = startIndex + 1;

        // Check if the current row has one or two items
        final bool hasTwoItems = endIndex < newsList.length;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: newsList[startIndex],
            ),
            if (hasTwoItems)
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: newsList[endIndex],
              ),
            if (!hasTwoItems)
              const Padding(
                padding: EdgeInsets.all(7.0),
                child: SizedBox(width: 145),
              ),
          ],
        );
      },
    );
  }
}
