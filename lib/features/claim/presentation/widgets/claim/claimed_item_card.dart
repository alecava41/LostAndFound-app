import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/item/domain/entities/item.dart' as item;
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors/custom_color.dart';
import '../../../../../utils/constants.dart';

class ClaimedItemCard extends StatelessWidget {
  final bool isItemResolved;
  final String token;
  final ClaimReceived claim;

  const ClaimedItemCard({super.key, required this.isItemResolved, required this.token, required this.claim});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClaimBloc, ClaimState>(
      builder: (ctx, state) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: claim.opened ? Theme.of(context).extension<CustomColors>()!.openedColor : Theme.of(context).extension<CustomColors>()!.notOpenedColor,
          child: InkWell(
            splashColor: !claim.opened ? Theme.of(context).extension<CustomColors>()!.splashGreenColor : Theme.of(context).extension<CustomColors>()!.splashGreyColor,
            onTap: () async {
              if (!isItemResolved) {
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
                  width: 0.3,
                  color: claim.opened ? Theme.of(context).extension<CustomColors>()!.borderColorOpened! : Theme.of(context).extension<CustomColors>()!.borderColorNotOpened!,
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
                              "$baseUrl/api/users/${claim.user.id}/image",
                              fit: BoxFit.cover,
                              headers: {"Authorization": "Bearer $token"},
                              errorBuilder: (context, error, stackTrace) => Image.asset(
                                noUserImagePath,
                                fit: BoxFit.cover,
                              ),
                              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const CustomCircularProgress(size: 35);
                              },
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
                                claim.item.title,
                                style: const TextStyle(fontSize: 17),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.claimedBy(claim.user.username),
                              style: TextStyle(fontSize: 13, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: claim.status == ClaimStatus.approved
                                    ? Theme.of(context).extension<CustomColors>()!.claimAcceptedStatusColor
                                    : (claim.status == ClaimStatus.rejected
                                        ? Theme.of(context).extension<CustomColors>()!.claimDeniedStatusColor
                                        : Theme.of(context).extension<CustomColors>()!.claimWaitingStatusColor),
                              ),
                              child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context)!.claimStatusSpaced,
                                      style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.onBackground),
                                    ),
                                    TextSpan(
                                      text: claim.status.getTranslatedName(context).toUpperCase(),
                                      style:
                                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onBackground),
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
