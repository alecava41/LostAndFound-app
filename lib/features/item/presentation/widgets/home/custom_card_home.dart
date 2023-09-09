import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:lost_and_found/utils/screen_size.dart';

class CustomCardHome extends StatelessWidget {
  final int id;
  final bool hasImage;
  final String text;
  final int claims;
  final int approvedClaims;
  final String token;

  const CustomCardHome({
    super.key,
    required this.hasImage,
    required this.id,
    required this.text,
    required this.claims,
    required this.token,
    required this.approvedClaims,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.isBigSmartphoneDevice(context)
          ? 240
          : ScreenSize.isMediumSmartphoneDevice(context)
              ? 200
              : 180,
      width: ScreenSize.isBigSmartphoneDevice(context)
          ? 165
          : ScreenSize.isMediumSmartphoneDevice(context)
              ? 150
              : 130,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: SizedBox(
                        height: ScreenSize.isBigSmartphoneDevice(context)
                            ? 150
                            : ScreenSize.isMediumSmartphoneDevice(context)
                                ? 130
                                : 100,
                        width: ScreenSize.isBigSmartphoneDevice(context)
                            ? 150
                            : ScreenSize.isMediumSmartphoneDevice(context)
                                ? 130
                                : 100,
                        child: hasImage
                            ? CachedNetworkImage(
                                imageUrl: "$baseUrl/api/items/$id/image",
                                fit: BoxFit.cover,
                                httpHeaders: {
                                  "Authorization": "Bearer $token",
                                },
                                placeholder: (context, _) => const CustomCircularProgress(size: 75.0),
                                errorWidget: (context, url, error) => noItemImage,
                                imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                              )
                            : noItemImage,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 18, bottom: 5, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,
                          style: TextStyle(
                            fontSize: ScreenSize.isBigSmartphoneDevice(context)
                                ? 18
                                : ScreenSize.isMediumSmartphoneDevice(context)
                                    ? 16
                                    : 15,
                          ),
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(
                        height: 5,
                      ),
                      if (claims > 0)
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: PersonalizedColor.claimWaitingStatusColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.connect_without_contact,
                                      size: 12.5,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.openClaims(claims),
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      else if (approvedClaims > 0)
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: PersonalizedColor.claimAcceptedStatusColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.connect_without_contact,
                                      size: 12.5,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.resolved,
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: PersonalizedColor.splashGreyColor,
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
        ],
      ),
    );
  }
}
