import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors.dart';

class InboxItem extends StatelessWidget {
  final int otherUserId;
  final String token;
  final String roomName;
  final String lastMessage;
  final bool opened;
  final int itemId;
  final String itemTitle;
  final VoidCallback onTap;

  const InboxItem({
    super.key,
    required this.otherUserId,
    required this.token,
    required this.roomName,
    required this.lastMessage,
    required this.opened,
    required this.onTap,
    required this.itemId,
    required this.itemTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: !opened ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: !opened ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircularImage(
                              token: token,
                              imageUrl: "$baseUrl/api/users/$otherUserId/image",
                              hasImage: true,
                              radius: 25,
                              errorImage: Image.asset(
                                noUserImagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      roomName,
                                      style: const TextStyle(fontSize: 18),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 12, 4),
                  child: SizedBox(
                    width: 80,
                    //color: Colors.amber,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: () {
                                try {
                                  return Image.network(
                                    "$baseUrl/api/items/$itemId/image",
                                    fit: BoxFit.cover,
                                    headers: {"Authorization": "Bearer $token"},
                                    loadingBuilder:
                                        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const CustomCircularProgress(size: 25);
                                    },
                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                      noItemImagePath,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                } catch (_) {
                                  return Image.asset(
                                    noItemImagePath,
                                    fit: BoxFit.cover,
                                  );
                                }
                              }()),
                        ),
                        Text(
                          itemTitle,
                          style: const TextStyle(color: Colors.black45, overflow: TextOverflow.ellipsis, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
