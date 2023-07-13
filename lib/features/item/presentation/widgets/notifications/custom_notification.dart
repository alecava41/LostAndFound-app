import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/circular_image_avatar.dart';
import 'package:lost_and_found/utils/colors.dart';

class CustomNotification extends StatelessWidget {
  final int targetUserId;
  final String targetUsername;
  final int targetItemId;
  final String subjectItemTitle;
  final ItemType subjectItemType;
  final String token;
  final bool opened;

  const CustomNotification({
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
            color: opened ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
            child: InkWell(
              onTap: () {}, // TODO: navigate to target item page
              splashColor: opened ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  //child: Flexible(
                  child: Row(
                    children: [
                      CircularImage(
                        imageUrl: "http://localhost:5000/api/users/$targetUserId/image",
                        token: token,
                        radius: 35,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Builder(
                          builder: (BuildContext context) {
                            final sentence =
                                (subjectItemType == ItemType.lost) ? "might have found your " : "might be the owner of ";

                            return Text(
                              "Hey, $targetUsername $sentence $subjectItemTitle!",
                              style: const TextStyle(fontSize: 15),
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
          //  ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
        ],
      );
    });
  }
}
