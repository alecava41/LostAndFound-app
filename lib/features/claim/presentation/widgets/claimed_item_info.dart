import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              child: item.hasImage
                  ? ImageDialogWidget(
                      imageUrl: itemUrl,
                      token: token,
                      errorAsset: 'assets/images/no-item.png',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: itemUrl,
                          fit: BoxFit.cover,
                          httpHeaders: {
                            "Authorization": "Bearer $token",
                          },
                          placeholder: (context, _) => const CustomCircularProgress(size: 75),
                          errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
                          imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/no-item.png"),
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
                        text: const Text("See details"),
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
                    hasImage: true,
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
                side: const BorderSide(color: PersonalizedColor.mainColor, width: 1.5),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
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
              child: const Text(
                'Send a message',
                style: TextStyle(fontSize: 14, color: PersonalizedColor.mainColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
