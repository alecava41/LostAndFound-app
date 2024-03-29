import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../pages/item_page.dart';

class CustomCardSearch extends StatelessWidget {
  final int id;
  final String text;
  final String owner;
  final String type;
  final String token;
  final DateTime date;
  final double distance;

  const CustomCardSearch({
    super.key,
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
      width: 165,
      child: Stack(
        children: [
          Card(
            surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
            color: Theme.of(context).extension<CustomColors>()!.background2,
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
                      Text(text, style: const TextStyle(fontSize: 16.0), overflow: TextOverflow.ellipsis),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        DateFormat("dd/MM/yyyy").format(date),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                      ),
                      Text(
                        AppLocalizations.of(context)!.metersAway(distance.toInt()),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
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
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "${type[0].toUpperCase()}${type.substring(1)}", overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 16),
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
