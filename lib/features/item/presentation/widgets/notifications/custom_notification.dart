import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';

import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/widgets/circular_image_avatar.dart';
import '../../../../../utils/colors/custom_color.dart';

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
            color: opened ? Theme.of(context).extension<CustomColors>()!.openedColor : Theme.of(context).extension<CustomColors>()!.notOpenedColor,
            child: InkWell(
              onTap: () => {
                ctx.read<NewsBloc>().add(NewsEvent.newsRead(id)),
                ctx.read<BadgeBloc>().add(const BadgeEvent.newsRead()),
                Navigator.push(context, MaterialPageRoute(builder: (_) => ItemScreen(itemId: targetItemId)))
              },
              splashColor: opened ? Theme.of(context).extension<CustomColors>()!.splashGreyColor : Theme.of(context).extension<CustomColors>()!.splashGreenColor,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      CircularImage(
                        imageUrl: "$baseUrl/api/users/$targetUserId/image",
                        token: token,
                        radius: 35,
                        errorImage: noUserImagePath,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Builder(
                          builder: (BuildContext context) {
                            final sentence = (subjectItemType == ItemType.lost)
                                ? AppLocalizations.of(context)!.mightFound
                                : AppLocalizations.of(context)!.mightLost;

                            return RichText(
                              textScaleFactor: MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: AppLocalizations.of(context)!.hey,
                                    style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  TextSpan(
                                    text: targetUsername,
                                    style:
                                        TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: " $sentence ",
                                    style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
                                  ),
                                  TextSpan(
                                    text: subjectItemTitle,
                                    style:
                                        TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "!",
                                    style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
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
