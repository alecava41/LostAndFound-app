import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/constants.dart';

class NotClaimedItemCard extends StatelessWidget {
  final int itemId;
  final String itemName;
  final String token;

  const NotClaimedItemCard({
    required this.itemId,
    required this.itemName,
    required this.token,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: PersonalizedColor.openedColor,
        child: InkWell(
          splashColor: PersonalizedColor.splashGreyColor,
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ItemScreen(
                  itemId: itemId,
                ),
              ),
            )
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: PersonalizedColor.borderColorOpened,
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
                      imageUrl: "$baseUrl/api/items/$itemId/image",
                      fit: BoxFit.cover,
                      httpHeaders: {
                        "Authorization": "Bearer $token",
                      },
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          const CustomCircularProgress(size: 35),
                      errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
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
                              itemName,
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
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
