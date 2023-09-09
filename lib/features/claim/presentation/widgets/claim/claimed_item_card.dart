import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/item/domain/entities/item.dart' as item;
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/constants.dart';

class ClaimedItemCard extends StatelessWidget {
  final String token;
  final ClaimReceived claim;

  const ClaimedItemCard({super.key, required this.token, required this.claim});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClaimBloc, ClaimState>(
      builder: (ctx, state) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: claim.opened ? PersonalizedColor.openedColor : PersonalizedColor.notOpenedColor,
          child: InkWell(
            splashColor: !claim.opened ? PersonalizedColor.splashGreenColor : PersonalizedColor.splashGreyColor,
            onTap: () async {
              ctx.read<ClaimBloc>().add(ClaimEvent.claimRead(claim.id));
              ctx.read<BadgeBloc>().add(const BadgeEvent.receivedClaimRead());

              final updatedItem = await Navigator.push<item.Item?>(
                context,
                MaterialPageRoute(
                  builder: (_) => AnswerClaimScreen(
                    itemId: claim.item.id,
                    claimId: claim.id,
                    isClaimAlreadyManaged: claim.status != ClaimStatus.pending,
                  ),
                ),
              );

              if (updatedItem != null && context.mounted) {
                context.read<ClaimBloc>().add(ClaimEvent.receivedClaimsRefreshed(updatedItem));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.3,
                  color: claim.opened ? PersonalizedColor.borderColorOpened : PersonalizedColor.borderColorNotOpened,
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
                      child: claim.user.hasImage
                          ? CachedNetworkImage(
                              imageUrl: "$baseUrl/api/users/${claim.user.id}/image",
                              fit: BoxFit.cover,
                              httpHeaders: {
                                "Authorization": "Bearer $token",
                              },
                              progressIndicatorBuilder: (context, url, downloadProgress) =>
                                  const CustomCircularProgress(size: 35),
                              errorWidget: (context, url, error) => noUserImage,
                              imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                            )
                          : noUserImage,
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
                            Text(
                              AppLocalizations.of(context)!.claimedBy(claim.user.username),
                              style: const TextStyle(fontSize: 13, color: PersonalizedColor.userNameColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
                                    TextSpan(
                                      text: AppLocalizations.of(context)!.claimStatusSpaced,
                                      style: const TextStyle(fontSize: 13, color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: claim.status.getTranslatedName(context).toUpperCase(),
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
      ),
    );
  }
}
