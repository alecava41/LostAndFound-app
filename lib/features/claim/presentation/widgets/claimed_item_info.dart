import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../utils/colors.dart';
import '../../../item/domain/entities/item.dart';
import '../../../item/presentation/widgets/notifications/circular_image_avatar.dart';
import '../bloc/answer_claim/answer_claim_bloc.dart';
import '../bloc/answer_question/answer_question_bloc.dart';

class ClaimedItemInfo extends StatelessWidget {
  final Item item;
  final String token;
  final String subject; // either the owner of the object or the user that claimed it
  final int otherUserId;
  final bool hasOtherUserImage;
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
    required this.hasOtherUserImage,
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
              child: item.hasImage
                  ? ImageDialogWidget(
                      imageUrl: itemUrl,
                      token: token,
                      errorImage: Image.asset(
                        noItemImagePath,
                        fit: BoxFit.cover,
                      ),
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
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        noItemImagePath,
                        fit: BoxFit.cover,
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
                        text: Text(AppLocalizations.of(context)!.seeDetails),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          color: PersonalizedColor.mainColor,
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
                    hasImage: hasOtherUserImage,
                    imageUrl: "$baseUrl/api/users/$otherUserId/image",
                    radius: 25,
                    token: token,
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
                backgroundColor: Colors.white,
                side: const BorderSide(color: PersonalizedColor.mainColor, width: 0.4),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              ).copyWith(
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return PersonalizedColor.primarySwatch.shade50;
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
                style: const TextStyle(fontSize: 14, color: PersonalizedColor.mainColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
