import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors/custom_color.dart';
import '../../../../../utils/constants.dart';

class NotClaimedItemCard extends StatelessWidget {
  final bool isItemSolved;
  final int itemId;
  final String itemName;
  final String token;

  const NotClaimedItemCard({
    required this.isItemSolved,
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
        color: Theme.of(context).extension<CustomColors>()!.openedColor,
        child: InkWell(
          splashColor: Theme.of(context).extension<CustomColors>()!.splashGreyColor,
          onTap: () {
            if (!isItemSolved) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ItemScreen(
                    itemId: itemId,
                  ),
                ),
              );
            } else {
              Fluttertoast.showToast(
                msg: AppLocalizations.of(context)!.itemAlreadySolvedToast,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).extension<CustomColors>()!.borderColorOpened!,
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
                    child: Image.network(
                      "$baseUrl/api/items/$itemId/image",
                      fit: BoxFit.cover,
                      headers: {"Authorization": "Bearer $token"},
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const CustomCircularProgress(size: 35);
                      },
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        noItemImagePath,
                        fit: BoxFit.cover,
                      ),
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
