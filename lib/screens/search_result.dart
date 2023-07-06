import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../widgets/card.dart';
import '../widgets/custom_list_view.dart';

class SearchResultScreen extends StatelessWidget {
  final List<CustomCard> lostItems = [
    CustomCard(
      imagePath: "assets/images/iphone.png",
      text: "Iphone 12",
      nclaims: 0,
      onTap: () {},
    ),
    CustomCard(
        imagePath: "assets/images/airpods.png",
        text: "AirPods Pro",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/portafoglio.png",
        text: "Brown Wallet",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/iphone.png",
        text: "Iphone 12",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/portafoglio.png",
        text: "Wallet",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/iphone.png",
        text: "Iphone 12",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/portafoglio.png",
        text: "Wallet",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/iphone.png",
        text: "Iphone 12",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
    CustomCard(
        imagePath: "assets/images/portafoglio.png",
        text: "Wallet",
        nclaims: 0,
        onTap: () => {print("CIAO")}),
  ];
  final List<CustomCard> foundItems;

  SearchResultScreen(
      {super.key, /*required this.lostItems,*/ required this.foundItems});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: PersonalizedColor.backGroundColor,
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
            ),
            body: lostItems.isNotEmpty
                ? Column(
                    children: [
                      Container(
                        color: Colors.white,
                        //width: MediaQuery.of(context).size.width,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {
                              // Button functionality
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.filter_list,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Filter',
                                  style: TextStyle(fontSize: 20),
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
                      Expanded(
                          child: CustomScrollableListView(
                        itemList: lostItems,
                      ))
                    ],
                  )
                : const Center(
                    child: Text(
                      "You have no lost item inserted yet :)",
                      style: TextStyle(fontSize: 20),
                    ),
                  )));
  }
}
