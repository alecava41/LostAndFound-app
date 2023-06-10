import 'package:flutter/material.dart';

import '../../widgets/card.dart';
import '../../widgets/circular_buttons.dart';

class HomeScreenPage extends StatelessWidget {
  final List<CustomCard> lostItems;
  final List<CustomCard> foundItems;

  const HomeScreenPage(
      {super.key, required this.lostItems, required this.foundItems});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 20, 50),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Home",
                    style: TextStyle(fontSize: 40),
                  ),
                  Row(
                    children: [
                      ClickableCircularButton(
                        icon: Icons.notifications,
                        onPressed: () {
                          print("Hey");
                        },
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      ClickableCircularButton(
                        icon: Icons.search,
                        onPressed: () {
                          print("Hey");
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Text(
              "Your lost items",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: lostItems,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your found items",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: foundItems,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
