import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../../utils/colors.dart';

class InboxItem extends StatelessWidget {
  final int otherUserId;

  final String token;

  final String roomName;

  final String lastMessage;

  final bool open;

  final VoidCallback onTap;

  const InboxItem({
    super.key,
    required this.otherUserId,
    required this.token,
    required this.roomName,
    required this.lastMessage,
    required this.open,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: open ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: open ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ImageDialogWidget(
                  imageUrl: "$baseUrl/api/users/$otherUserId/image",
                  token: token,
                  errorAsset: 'assets/images/no-item.png',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: "$baseUrl/api/users/$otherUserId/image",
                      fit: BoxFit.cover,
                      httpHeaders: {
                        "Authorization": "Bearer $token",
                      },
                      placeholder: (context, _) => const CustomCircularProgress(size: 35),
                      errorWidget: (context, url, error) => Image.asset("assets/images/no-user.jpg"),
                      imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                    ),
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
                          style: const TextStyle(fontSize: 26.5),
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
