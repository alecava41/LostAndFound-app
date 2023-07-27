import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../utils/colors.dart';

class ClaimedItemCard extends StatelessWidget {
  final int userId;
  final String username;
  final bool opened;
  final String token;
  final VoidCallback onTap;

  // final String itemImagePath;
  // final String itemName;
  // final bool onlyUser; // if only user true, the card display only the name of the user and his profile pic

  const ClaimedItemCard({
    super.key,
    // required this.itemImagePath,
    // required this.itemName,
    // required this.onlyUser,
    required this.userId,
    required this.username,
    required this.opened,
    required this.token,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: !opened ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
        child: InkWell(
          splashColor: !opened ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
          onTap: () => onTap(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 0.3,
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: "$baseUrl/api/users/$userId/image",
                        fit: BoxFit.cover,
                        httpHeaders: {
                          "Authorization": "Bearer $token",
                        },
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            const CircularProgressIndicator(value: null),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                      )
                      // Image.asset(
                      //   onlyUser ? userImagePath : itemImagePath,
                      //   fit: BoxFit.cover,
                      // ),
                      ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Flexible(
                          //   child: Text(
                          //     username,
                          //     // onlyUser ? user : itemName,
                          //     style: const TextStyle(fontSize: 17),
                          //     overflow: TextOverflow.ellipsis,
                          //     maxLines: 1,
                          //   ),
                          // ),
                          // onlyUser
                          //     ? Container()
                          //     :
                          Text(
                            "Claimed by $username",
                            style: const TextStyle(fontSize: 13),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
