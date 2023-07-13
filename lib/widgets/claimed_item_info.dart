import 'package:flutter/material.dart';
import 'circular_image_avatar.dart';
import 'image_dialog_image.dart';

class ClaimedItemInfo extends StatelessWidget {
  final String itemImagePath;
  final String itemName;
  final String userImagePath;
  final String user;

  const ClaimedItemInfo({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.userImagePath,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: ImageDialogWidget(
              userImagePath: itemImagePath,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  itemImagePath,
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Expanded(
          child: Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      itemName,
                      style: const TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text("Claimed by:"),
                      ),
                      Row(
                        children: [
                          ImageDialogWidget(
                            userImagePath: userImagePath,
                            child: CircularImage(
                              imagePath: userImagePath,
                              radius: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                user,
                                style: const TextStyle(fontSize: 18),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
