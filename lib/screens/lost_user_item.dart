import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

import 'insert_item.dart';

class LostUserItemScreen extends StatelessWidget {
  final String image;
  final String title;
  final String position;
  final String date;
  final String category;

  const LostUserItemScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                isFound: false,
              ),
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

  void onModifyClick(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InsertItemScreen(
            imagePath: image,
            categorySelected: category,
            selectedPosition: position,
            insertedTitle: title,
            selectedLostOrFound: 1,
          ),
        ));
  }
}
