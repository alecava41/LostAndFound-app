import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/circular_image_avatar.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

class CustomNotification extends StatelessWidget {
  final int id;
  final int targetUserId;
  final String targetUsername;
  final int targetItemId;
  final String subjectItemTitle;
  final ItemType subjectItemType;
  final String token;
  final bool opened;

  const CustomNotification({
    required this.id,
    required this.targetUserId,
    required this.targetUsername,
    required this.targetItemId,
    required this.subjectItemTitle,
    required this.subjectItemType,
    required this.opened,
    required this.token,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (ctx, state) {
      return Column(
        children: [
          Material(
            color: opened ? PersonalizedColor.openedColor : PersonalizedColor.notOpenedColor,
            child: InkWell(
              onTap: () => {
                ctx.read<NewsBloc>().add(NewsEvent.newsRead(id)),
                ctx.read<BadgeBloc>().add(const BadgeEvent.newsRead()),
                Navigator.push(context, MaterialPageRoute(builder: (_) => ItemScreen(itemId: targetItemId)))
              },
              splashColor: opened ? PersonalizedColor.splashGreyColor : PersonalizedColor.splashGreenColor,
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      CircularImage(
                        imageUrl: "$baseUrl/api/users/$targetUserId/image",
                        token: token,
                        radius: 35,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Builder(
                          builder: (BuildContext context) {
                            final sentence = (subjectItemType == ItemType.lost)
                                ? AppLocalizations.of(context)!.mightFound
                                : AppLocalizations.of(context)!.mightLost;

                            return RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: AppLocalizations.of(context)!.hey,
                                    style: const TextStyle(fontSize: 15, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: targetUsername,
                                    style:
                                        const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: " $sentence ",
                                    style: const TextStyle(fontSize: 15, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: subjectItemTitle,
                                    style:
                                        const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  const TextSpan(
                                    text: "!",
                                    style: TextStyle(fontSize: 15, color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
        ],
      );
    });
  }
}
