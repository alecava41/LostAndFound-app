import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../pages/item_page.dart';

class CustomCardNews extends StatelessWidget {
  final int id;
  final String title;
  final String token;

  const CustomCardNews({
    super.key,
    required this.id,
    required this.title,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 145,
      child: Stack(
        children: [
          Card(
            surfaceTintColor: Theme.of(context).colorScheme.background,
            color: Theme.of(context).colorScheme.background,
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
                      child: Image.network(
                        "$baseUrl/api/items/$id/image",
                        fit: BoxFit.cover,
                        headers: {"Authorization": "Bearer $token"},
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const CustomCircularProgress(size: 75);
                        },
                        errorBuilder: (context, error, stackTrace) => Image.asset(
                          noItemImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 18, bottom: 5, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: const TextStyle(fontSize: 16.0), overflow: TextOverflow.ellipsis),
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
