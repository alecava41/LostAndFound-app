import 'package:flutter/material.dart';

import '../../features/item/presentation/widgets/home/custom_card.dart';
import '../../features/item/presentation/widgets/home/clickable_circular_button.dart';

class HomeScreenPage extends StatelessWidget {
  final List<CustomCard> lostItems;
  final List<CustomCard> foundItems;

  const HomeScreenPage(
      {super.key, required this.lostItems, required this.foundItems});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
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
                      onPressed: () => onNotificationsIconPressed(context),
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
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Text(
              "Your lost items",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 25),
            child: Container(
              height: 240,
              child: lostItems.isNotEmpty
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: lostItems,
                    )
                  : const Center(
                      child: Text(
                      "You have no lost item inserted yet :)",
                      style: TextStyle(fontSize: 20),
                    )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Text(
              "Your found items",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              height: 240,
              child: foundItems.isNotEmpty
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: foundItems,
                    )
                  : const Center(
                      child: Text(
                      "You have no find item inserted yet :)",
                      style: TextStyle(fontSize: 20),
                    )),
            ),
          ),
        ],
      ),
    );
  }

  void onNotificationsIconPressed(context) {
    Navigator.pushNamed(context, "/notifications");
  }
}
