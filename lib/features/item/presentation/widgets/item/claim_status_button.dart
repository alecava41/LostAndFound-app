import 'package:flutter/material.dart';

import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../utils/colors.dart';
import '../../../../claim/presentation/pages/answer_question_screen.dart';

class ClaimStatusButton extends StatelessWidget {
  final ClaimStatus status;
  final String owner;
  final int itemId;
  final bool isCliccable;

  const ClaimStatusButton({
    super.key,
    required this.status,
    required this.owner,
    required this.itemId,  this.isCliccable = true,
    
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Material(
        color: status == ClaimStatus.approved
            ? PersonalizedColor.claimAcceptedStatusColor
            : (status == ClaimStatus.pending
                ? PersonalizedColor.claimWaitingStatusColor
                : PersonalizedColor.claimDeniedStatusColor),
        child: InkWell(
          onTap: isCliccable? () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => AnswerQuestionScreen(
                  itemId: itemId,
                  isClaimAlreadyTaken: true,
                ),
              ),
            );
          } : null,
          splashColor: PersonalizedColor.splashGreyColor,
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
                                const TextSpan(
                                  text: "Claim status: ",
                                  style: TextStyle(fontSize: 18, color: Colors.black),
                                ),
                                TextSpan(
                                  text: status.name.toUpperCase(),
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
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
                          const Icon(
                            Icons.info,
                            size: 20,
                            color: Colors.black54,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: status == ClaimStatus.approved
                                ? Text(
                                    "Your claim has been accepted! Get in touch with $owner through the chat to arrange the item's return.",
                                    style: const TextStyle(color: Colors.black54),
                                  )
                                : status == ClaimStatus.rejected
                                    ? Text(
                                        "Unfortunately, your claim has been rejected by $owner.",
                                        style: const TextStyle(color: Colors.black54),
                                      )
                                    : Text(
                                        "Wait for $owner to validate to your claim.",
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                isCliccable? const Icon(
                  Icons.chevron_right,
                  size: 50,
                ) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
