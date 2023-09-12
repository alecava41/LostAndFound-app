import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
                        ? Image.network(
                            "$baseUrl/api/users/$userId/image",
                            fit: BoxFit.cover,
                            headers: {"Authorization": "Bearer $token"},
                            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const CustomCircularProgress(size: 35);
                            },
                            errorBuilder: (context, error, stackTrace) => Image.asset(
                              noUserImagePath,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Image.asset(
                            noUserImagePath,
                            fit: BoxFit.cover,
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
                          Text(
                            AppLocalizations.of(context)!.claimedBy(username),
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
                                  TextSpan(
                                    text: AppLocalizations.of(context)!.claimStatusSpaced,
                                    style: const TextStyle(fontSize: 13, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: status.getTranslatedName(context).toUpperCase(),
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
