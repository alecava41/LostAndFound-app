import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../pages/item_page.dart';

class CustomCardSearch extends StatelessWidget {
  final int id;
  final String text;
  final String owner;
  final String type;
  final String token;
  final bool hasImage;

  const CustomCardSearch(
      {super.key, required this.hasImage, required this.id, required this.text, required this.type, required this.owner, required this.token});

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
                      child: hasImage ? CachedNetworkImage(
                        imageUrl: "$baseUrl/api/items/$id/image",
                        fit: BoxFit.cover,
                        httpHeaders: {
                          "Authorization": "Bearer $token",
                        },
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                        const CustomCircularProgress(size: 75),
                        errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
                        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                      ) : Image.asset("assets/images/no-item.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 18, bottom: 5, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: const TextStyle(fontSize: 16.0), overflow: TextOverflow.ellipsis),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        " ${type[0].toUpperCase()}${type.substring(1)} by $owner",
                        style: const TextStyle(fontSize: 14),
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
                          builder: (context) =>
                              ItemScreen(
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
