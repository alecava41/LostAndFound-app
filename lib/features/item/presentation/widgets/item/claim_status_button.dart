import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../utils/colors/custom_color.dart';
import '../../../../claim/presentation/pages/answer_question_screen.dart';

class ClaimStatusButton extends StatelessWidget {
  final ClaimStatus status;
  final String owner;
  final int itemId;
  final bool isClickable;

  const ClaimStatusButton({
    super.key,
    required this.status,
    required this.owner,
    required this.itemId,
    this.isClickable = true,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Material(
        color: status == ClaimStatus.approved
            ? Theme.of(context).extension<CustomColors>()!.claimAcceptedStatusColor
            : (status == ClaimStatus.pending
                ? Theme.of(context).extension<CustomColors>()!.claimWaitingStatusColor
                : Theme.of(context).extension<CustomColors>()!.claimDeniedStatusColor),
        child: InkWell(
          onTap: isClickable
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => AnswerQuestionScreen(
                        itemId: itemId,
                        isClaimAlreadyTaken: true,
                      ),
                    ),
                  );
                }
              : null,
          splashColor: Theme.of(context).extension<CustomColors>()!.splashGreyColor,
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 12, 4, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.connect_without_contact,
                            size: 25,
                          ),
                          const SizedBox(width: 5),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: AppLocalizations.of(context)!.claimStatusSpaced,
                                  style: TextStyle(fontSize: 18, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                                ),
                                TextSpan(
                                  text: status.getTranslatedName(context).toUpperCase(),
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            size: 20,
                            color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: status == ClaimStatus.approved
                                ? Text(
                                    AppLocalizations.of(context)!.acceptedQuestionClaim(owner),
                                    style: TextStyle(color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                                  )
                                : status == ClaimStatus.rejected
                                    ? Text(
                                        AppLocalizations.of(context)!.rejectedQuestionClaim(owner),
                                        style: TextStyle(color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                                      )
                                    : Text(
                                        AppLocalizations.of(context)!.waitQuestionClaim(owner),
                                        style: TextStyle(color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                                      ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                isClickable
                    ? const Icon(
                        Icons.chevron_right,
                        size: 50,
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
