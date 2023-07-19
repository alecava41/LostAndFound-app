import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';

class CustomCardSearch extends StatelessWidget {
  final int id;
  final String text;
  final String owner;
  final String type;
  final String token;

  const CustomCardSearch(
      {super.key, required this.id, required this.text, required this.type, required this.owner, required this.token});

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
                      child: CachedNetworkImage(
                        imageUrl: "http://localhost:5000/api/items/$id/image",
                        fit: BoxFit.cover,
                        httpHeaders: {
                          "Authorization": "Bearer $token",
                        },
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            CircularProgressIndicator(value: downloadProgress.progress),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
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
                onTap: () {}, // TODO create wiring
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
