import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/widgets/image_dialog_image.dart';

import '../utils/colors.dart';

class InboxItem extends StatelessWidget {
  final String userImagePath;

  final String userName;

  final String lastMessage;

  final bool open;

  final VoidCallback onTap;

  const InboxItem(
      {super.key,
      required this.userImagePath,
      required this.userName,
      required this.lastMessage,
      required this.open,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: open ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: open
            ? PersonalizedColor.primarySwatch.shade500
            : Colors.grey.withOpacity(0.4), // Customize the splash color

        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ImageDialogWidget(
                  userImagePath: userImagePath,
                  child: CircularImage(
                    imagePath: userImagePath,
                    radius: 35,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(fontSize: 26.5),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          lastMessage,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
        ]),
      ),
    );
  }
}
