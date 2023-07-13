import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/widgets/image_dialog_image.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

class FoundGenericItemScreen extends StatelessWidget {
  final String image;
  final String title;
  final String position;
  final String date;
  final String category;
  final String user;
  final String userImage;

  final VoidCallback onSendMessage;
  final VoidCallback onClaim;

  const FoundGenericItemScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.position,
      required this.date,
      required this.category,
      required this.user,
      required this.userImage,
      required this.onSendMessage,
      required this.onClaim})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
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
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lost by:",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  ImageDialogWidget(
                                    userImagePath: userImage,
                                    child: CircularImage(
                                      imagePath: userImage,
                                      radius: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 30),
                                      child: Text(
                                        user,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: PersonalizedColor.mainColor,
                                    width: 1.5),
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 15),
                              ),
                              onPressed: onSendMessage,
                              child: const Text(
                                'Send a message',
                                style: TextStyle(fontSize: 18, color: PersonalizedColor.mainColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children:[ Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18, ),
                              ),
                              onPressed: onSendMessage,
                              child: const Text(
                                'Claim the item',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),]
                        ),
                      ]),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
