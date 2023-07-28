import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/presentation/widgets/circular_image_avatar.dart';
import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../item/domain/entities/item.dart';


class ClaimedItemInfo extends StatelessWidget {
  final Item item;
  final String token;
  final String subject; // either the owner of the object or the user that claimed it

  const ClaimedItemInfo({
    super.key,
    required this.item,
    required this.token,
    required this.subject
    // required this.isClaimed, // if true shows claimed by $user, if false shows found by $user
  });

  @override
  Widget build(BuildContext context) {
    final String itemUrl = '$baseUrl/api/items/${item.id}/image';
    final String userUrl = '$baseUrl/api/users/${item.user.id}/image';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: ImageDialogWidget(
              imageUrl: itemUrl,
              token: token,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: itemUrl,
                  fit: BoxFit.cover,
                  httpHeaders: {
                    "Authorization": "Bearer $token",
                  },
                  placeholder: (context, _) => const CircularProgressIndicator(value: null),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                ),
              )),
        ),
        Expanded(
          child: SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      item.title,
                      style: const TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(item.userClaim != null ? "Claimed by:" : "Found by:"),
                      ),
                      Row(
                        children: [
                          ImageDialogWidget(
                            imageUrl: userUrl,
                            token: token,
                            child: CircularImage(
                              radius: 25,
                              token: token,
                              imageUrl: userUrl,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                subject,
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
