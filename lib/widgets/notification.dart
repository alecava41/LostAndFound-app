import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';

class CustomNotification extends StatelessWidget {
  final String userPhotoimagePath;
  final String notificationType;
  final bool open;
  final String fromUser;
  final VoidCallback? onTap;

  const CustomNotification(
      {required this.userPhotoimagePath,
      required this.notificationType,
      required this.fromUser,
      required this.open,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: open ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
          child: InkWell(
            onTap: onTap,
            splashColor: open
                ? PersonalizedColor.primarySwatch.shade500
                : Colors.grey.withOpacity(0.4), // Customize the splash color

            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                //child: Flexible(
                child: Row(
                  children: [
                    CircularImage(
                      imagePath: userPhotoimagePath,
                      radius: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Builder(
                        builder: (BuildContext context) {
                          switch (notificationType) {
                            case 'objfound':
                              return Text(
                                "Hey, $fromUser might have found your object!",
                                style: TextStyle(fontSize: 15),
                              ); // Replace with your desired widget for case 'objfound'

                            default:
                              return const Text(
                                  "Error, this notification does not exist!"); // Replace with a default widget or handle unknown cases
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        //  ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
