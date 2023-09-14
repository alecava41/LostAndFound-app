import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_question_screen.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../utils/colors/custom_color.dart';
import '../../../../../utils/constants.dart';
import '../../../domain/entities/claim_sent.dart';

class ClaimedStatusCard extends StatelessWidget {
  final bool isItemSolved;
  final ClaimSent claim;
  final String token;

  const ClaimedStatusCard({
    required this.claim,
    required this.token,
    required this.isItemSolved,
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
              context.read<BadgeBloc>().add(const BadgeEvent.sentClaimRead());

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AnswerQuestionScreen(
                    itemId: claim.item.id,
                    isClaimAlreadyTaken: true,
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
                      "$baseUrl/api/items/${claim.item.id}/image",
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
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).colorScheme.onBackground),
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
