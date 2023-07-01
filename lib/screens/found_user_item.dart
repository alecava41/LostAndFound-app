import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

class FoundUserItem extends StatelessWidget {
  final String? image = null;
  final String noImagePath = "assets/images/occhiali.png";
  final title = "Iphone 12";
  final position = "Via Trieste 65, Padova";
  final date = "15/05/2023";
  final category = "Smartphone";

  const FoundUserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            PopupMenuButton<String>(
              iconSize: 30,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'opt1',
                  child: Text('Check as found'),
                ),
                const PopupMenuItem<String>(
                  value: 'opt2',
                  child: Text('Modify'),
                ),
                const PopupMenuItem<String>(
                  value: 'opt3',
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
              onSelected: (String value) {
                // Action to be performed when a menu item is selected
                switch (value) {
                  case 'opt1':
                    // Perform action for option 1
                    break;
                  case 'opt2':
                    // Perform action for option 2
                    break;
                  case 'opt3':
                    // Perform action for option 3
                    break;
                }
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            ImageItem(imagePath: image,),
            _divider,
            InfoItem(title: title, position: position, date: date, category: category),
            _divider
          ],
        )
        ),
      ),
    );
  }

  final _divider = const Divider(
    color: Colors.grey,
    thickness: 1,
    height: 0,
  );

}
