import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

class LostGenericItemScreen extends StatelessWidget {
  final String? image;
  final String title;
  final String position;
  final String date;
  final String category;
  final String user;

  const LostGenericItemScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
    required this.user,
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
              SizedBox(
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
                        Text(
                          "Lost by:",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircularImage(
                              imagePath: "assets/images/occhiali.png",
                              radius: 40,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Text(
                                  "$user",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                            ),
                            onPressed: () {
                              // Handle button press
                              // Add your logic here for sending a message
                            },
                            child: const Text('Send a message', style: TextStyle(fontSize: 18),),
                          ),
                        )
                      ]),
                ),
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
}
