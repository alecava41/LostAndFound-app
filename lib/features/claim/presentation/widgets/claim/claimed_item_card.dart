import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/constants.dart';

class ClaimedItemCard extends StatelessWidget {
  final String token;
  final ClaimReceived claim;

  const ClaimedItemCard({super.key, required this.token, required this.claim});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: !claim.opened ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
        child: InkWell(
          splashColor: !claim.opened ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
          onTap: () {}, // TODO create wiring
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
                      imageUrl: "$baseUrl/api/users/${claim.user.id}/image",
                      fit: BoxFit.cover,
                      httpHeaders: {
                        "Authorization": "Bearer $token",
                      },
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          const CircularProgressIndicator(value: null),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                    ),
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
                          Flexible(
                            child: Text(
                              claim.item.title,
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            "Claimed by: ${claim.user.username}",
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
