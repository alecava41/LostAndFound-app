import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

class CustomCardHome extends StatelessWidget {
  final int id;
  final bool hasImage;
  final String text;
  final int claims;
  final String token;

  const CustomCardHome(
      {super.key,
      required this.hasImage,
      required this.id,
      required this.text,
      required this.claims,
      required this.token});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: 165,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: SizedBox(
                      height: 150.0,
                      width: 150.0,
                      child: hasImage
                          ? CachedNetworkImage(
                              imageUrl: "$baseUrl/api/items/$id/image",
                              fit: BoxFit.cover,
                              httpHeaders: {
                                "Authorization": "Bearer $token",
                              },
                              placeholder: (context, _) =>
                                  const CustomCircularProgress(size: 75.0),
                              errorWidget: (context, url, error) => Image.asset(
                                "assets/images/no-item.png",
                                fit: BoxFit.cover,
                              ),
                              imageRenderMethodForWeb:
                                  ImageRenderMethodForWeb.HttpGet,
                            )
                          : Image.asset(
                              "assets/images/no-item.png",
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 18, bottom: 5, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,
                          style: const TextStyle(fontSize: 16.0),
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(
                        height: 5,
                      ),
                      if (claims > 0)
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: PersonalizedColor.claimWaitingStatusColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.connect_without_contact,
                                size: 15,
                              ),
                              Text(
                                " $claims claim${claims > 1 ? "s" : ""}",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            bottom: -1,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemScreen(
                                itemId: id,
                              )));
                },
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
