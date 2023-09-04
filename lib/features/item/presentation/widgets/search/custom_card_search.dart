import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../utils/colors.dart';
import '../../pages/item_page.dart';

class CustomCardSearch extends StatelessWidget {
  final int id;
  final String text;
  final String owner;
  final String type;
  final String token;
  final DateTime date;
  final double distance;
  final bool hasImage;

  const CustomCardSearch({
    super.key,
    required this.hasImage,
    required this.id,
    required this.text,
    required this.type,
    required this.owner,
    required this.date,
    required this.distance,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 253,
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
                              progressIndicatorBuilder: (context, url, downloadProgress) =>
                                  const CustomCircularProgress(size: 75),
                              errorWidget: (context, url, error) => Image.asset(
                                "assets/images/no-item.png",
                                fit: BoxFit.cover,
                              ),
                              imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                            )
                          : Image.asset(
                              "assets/images/no-item.png",
                              fit: BoxFit.cover,
                            ),
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
                        DateFormat("dd/MM/yyyy").format(date),
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      Text(
                        "${distance.toInt()}m away",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 4,
              top: 25,
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 65,
                height: 30,
                decoration: BoxDecoration(
                  color: PersonalizedColor.mainColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "${type[0].toUpperCase()}${type.substring(1)}",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )),
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
                      ),
                    ),
                  );
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
