import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/presentation/widgets/circular_image_avatar.dart';
import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../item/domain/entities/item.dart';
import '../bloc/answer_claim/answer_claim_bloc.dart';
import '../bloc/answer_question/answer_question_bloc.dart';

class ClaimedItemInfo extends StatelessWidget {
  final Item item;
  final String token;
  final String subject; // either the owner of the object or the user that claimed it
  final int otherUserId;
  final String otherUserUsername;
  final bool isQuestionScreen;
  final int? claimIdx;

  const ClaimedItemInfo({
    super.key,
    required this.item,
    required this.token,
    required this.subject,
    required this.otherUserId,
    required this.otherUserUsername,
    required this.isQuestionScreen,
    required this.claimIdx,
  });

  @override
  Widget build(BuildContext context) {
    final String itemUrl = '$baseUrl/api/items/${item.id}/image';

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: ImageDialogWidget(
                imageUrl: itemUrl,
                token: token,
                errorImage: noItemImagePath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    itemUrl,
                    fit: BoxFit.cover,
                    headers: {"Authorization": "Bearer $token"},
                    errorBuilder: (ctx, error, trace) => Image.asset(
                      noItemImagePath,
                      fit: BoxFit.cover,
                    ),
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CustomCircularProgress(size: 75);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          item.title,
                          style: const TextStyle(fontSize: 20),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      PersonalizedLargeGreenButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemScreen(itemId: item.id))),
                        text: Text(
                          AppLocalizations.of(context)!.seeDetails,
                          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                children: [
                  CircularImage(
                    imageUrl: "$baseUrl/api/users/$otherUserId/image",
                    radius: 25,
                    token: token,
                    errorImage: noUserImagePath,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        otherUserUsername,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 0.4),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              ).copyWith(
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.onBackground.withOpacity(0.2);
                    }
                    return Colors.transparent;
                  },
                ),
              ),
              onPressed: () {
                if (isQuestionScreen) {
                  context.read<AnswerQuestionBloc>().add(AnswerQuestionEvent.createChatRoom(
                        otherUserId,
                        otherUserUsername,
                      ));
                } else {
                  context.read<AnswerClaimBloc>().add(AnswerClaimEvent.createChatRoom(
                        otherUserId,
                        otherUserUsername,
                      ));
                }
              },
              child: Text(
                AppLocalizations.of(context)!.sendMessage,
                style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
