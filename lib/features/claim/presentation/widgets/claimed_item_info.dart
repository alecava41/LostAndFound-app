import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/presentation/widgets/circular_image_avatar.dart';
import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../item/domain/entities/item.dart';


class ClaimedItemInfo extends StatelessWidget {
  final Item item;
  final String token;
  final String subject; // either the owner of the object or the user that claimed it
  final int? claimIdx;

  const ClaimedItemInfo({
    super.key,
    required this.item,
    required this.token,
    required this.subject,
    required this.claimIdx,
  });

  @override
  Widget build(BuildContext context) {
    final String itemUrl = '$baseUrl/api/items/${item.id}/image';

    final User user = claimIdx != null ? item.claims![claimIdx!].user : item.user;

    final String userUrl = '$baseUrl/api/users/${user.id}/image';

    // TODO (@backToFrancesco) if the name of item is too long, it can't be read

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: item.hasImage ?
          ImageDialogWidget(
              imageUrl: itemUrl,
              token: token,
              errorAsset: 'assets/images/no-item.png',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: itemUrl,
                  fit: BoxFit.cover,
                  httpHeaders: {
                    "Authorization": "Bearer $token",
                  },
                  placeholder: (context, _) => const CustomCircularProgress(size: 75),
                  errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
                  imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                ),
              )) : Image.asset("assets/images/no-item.png"),
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
                        child: Text(item.claims != null ? "Claimed by" : "Found by"),
                      ),
                      Row(
                        children: [
                          item.user.hasImage ?
                          ImageDialogWidget(
                            imageUrl: userUrl,
                            token: token,
                            errorAsset: 'assets/images/no-user.jpg',
                            child: CircularImage(
                              radius: 25,
                              token: token,
                              imageUrl: userUrl,
                              hasImage: user.hasImage,
                              errorAsset: "assets/images/no-user.jpg",
                            ),
                          ) : CircularImage(
                            radius: 25,
                            token: token,
                            imageUrl: userUrl,
                            hasImage: false,
                            errorAsset: "assets/images/no-user.jpg",
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          // TODO (@backToFrancesco) if the username of item is too long, it displays in two lines
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
