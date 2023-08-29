import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../utils/constants.dart';
import '../../../domain/entities/claim_sent.dart';

class ClaimedStatusCard extends StatelessWidget {
  final ClaimSent claim;
  final String token;

  const ClaimedStatusCard({
    required this.claim,
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
            context.read<BadgeBloc>().add(const BadgeEvent.sentClaimRead()),
            Navigator.push(context, MaterialPageRoute(builder: (_) => ItemScreen(itemId: claim.item.id)))
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
                    child: claim.item.hasImage
                        ? CachedNetworkImage(
                            imageUrl: "$baseUrl/api/items/${claim.item.id}/image",
                            fit: BoxFit.cover,
                            httpHeaders: {
                              "Authorization": "Bearer $token",
                            },
                            progressIndicatorBuilder: (context, url, downloadProgress) =>
                                const CustomCircularProgress(size: 35),
                            errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
                            imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                          )
                        : Image.asset("assets/images/no-item.png"),
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
                              claim.item.title,
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: claim.status == ClaimStatus.approved
                                  ? PersonalizedColor.claimAcceptedStatusColor
                                  : (claim.status == ClaimStatus.rejected
                                      ? PersonalizedColor.claimDeniedStatusColor
                                      : PersonalizedColor.claimWaitingStatusColor),
                            ),
                            child: RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Claim status: ",
                                    style: TextStyle(fontSize: 13, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: claim.status.name.toUpperCase(),
                                    style:
                                        const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ],
                              ),
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
