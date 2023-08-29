import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../utils/colors.dart';

class ClaimedItemCard extends StatelessWidget {
  final int userId;
  final String username;
  final bool opened;
  final bool hasImage;
  final String token;
  final ClaimStatus status;
  final VoidCallback onTap;

  const ClaimedItemCard({
    super.key,
    required this.userId,
    required this.username,
    required this.hasImage,
    required this.opened,
    required this.token,
    required this.onTap,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: opened ? PersonalizedColor.openedColor : PersonalizedColor.notOpenedColor,
        child: InkWell(
          splashColor: opened ? PersonalizedColor.splashGreyColor : PersonalizedColor.splashGreenColor,
          onTap: () => onTap(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.3,
                color: opened ? PersonalizedColor.borderColorOpened : PersonalizedColor.borderColorNotOpened,
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
                    child: hasImage
                        ? CachedNetworkImage(
                            imageUrl: "$baseUrl/api/users/$userId/image",
                            fit: BoxFit.cover,
                            httpHeaders: {
                              "Authorization": "Bearer $token",
                            },
                            progressIndicatorBuilder: (context, url, downloadProgress) =>
                                const CustomCircularProgress(size: 35),
                            errorWidget: (context, url, error) => Image.asset('assets/images/no-user.jpg'),
                            imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                          )
                        : Image.asset('assets/images/no-user.jpg'),
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
                          Text(
                            "Claimed by $username",
                            style: const TextStyle(fontSize: 13),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: status == ClaimStatus.approved
                                  ? PersonalizedColor.claimAcceptedStatusColor
                                  : (status == ClaimStatus.rejected
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
                                    text: status.name.toUpperCase(),
                                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
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
