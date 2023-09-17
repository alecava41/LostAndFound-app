import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:lost_and_found/utils/screen_size.dart';

import '../../../../../utils/colors/custom_color.dart';

class CustomCardHome extends StatelessWidget {
  final int id;
  final String text;
  final int claims;
  final int approvedClaims;
  final String token;
  final bool hasAdditionalInfo;

  const CustomCardHome({
    super.key,
    required this.id,
    required this.text,
    required this.claims,
    required this.token,
    required this.approvedClaims,
    required this.hasAdditionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.isBigSmartphoneDevice(context)
          ? 165
          : ScreenSize.isMediumSmartphoneDevice(context)
              ? 150
              : 130,
      child: Stack(
        children:[ Card(
          surfaceTintColor:
              Theme.of(context).extension<CustomColors>()!.background2,
          color: Theme.of(context).extension<CustomColors>()!.background2,
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
                      child: Image.network(
                        "$baseUrl/api/items/$id/image",
                        fit: BoxFit.cover,
                        headers: {"Authorization": "Bearer $token"},
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const CustomCircularProgress(size: 75);
                        },
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          noItemImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                    textScaleFactor: 1.0,
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
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .extension<CustomColors>()!
                                    .nClaimsColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.connect_without_contact,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .openClaims(claims),
                                    textScaleFactor: 1.0,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .extension<CustomColors>()!
                                    .claimAcceptedStatusColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.connect_without_contact,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.resolved,
                                    textScaleFactor: 1.0,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
              splashColor: Theme.of(context).extension<CustomColors>()!.splashGreyColor!.withOpacity(0.3),
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
        ]
      ),
    );
  }
}
