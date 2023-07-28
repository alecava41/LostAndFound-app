import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/claimed_item_card.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

import 'insert_item.dart';

class FoundUserItemScreen extends StatelessWidget {
  final String image;
  final String title;
  final String position;
  final String date;
  final String category;
  final String question;

  final List<ClaimedItemCard> claims;

  const FoundUserItemScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
    required this.claims,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var claimsBox = Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
          child: Row(
            children: [
              Icon(
                Icons.connect_without_contact,
                size: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Text(
                "Item claimed by:",
                style: TextStyle(fontSize: 18),
                overflow: TextOverflow.ellipsis,
              )),
            ],
          ),
        ),
        claims.isEmpty
            ? const Center(
                child: Text(
                "No claims",
                style: TextStyle(fontSize: 18),
              ))
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: claims.length,
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: claims[index]);
                },
              ),
      ]),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            PopupMenuButton<String>(
              iconSize: 30,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'delete',
                  child: Text('Check as found'),
                ),
                const PopupMenuItem<String>(
                  value: 'modify',
                  child: Text('Modify'),
                ),
                const PopupMenuItem<String>(
                  value: 'delete',
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
              onSelected: (String value) {
                // Action to be performed when a menu item is selected
                switch (value) {
                  case 'delete':
                    // Perform action for option 1
                    break;
                  case 'modify':
                    onModifyClick(context);

                    break;
                }
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageItem(imagePath: image),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              InfoItem(
                title: title,
                position: position,
                date: date,
                category: category,
                isFound: true,
                question: question,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              claimsBox,
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onModifyClick(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InsertItemScreen(
            imagePath: image,
            insertedQuestion: question,
            categorySelected: category,
            selectedPosition: position,
            insertedTitle: title,
            selectedLostOrFound: 2,
          ),
        ));
  }
}
