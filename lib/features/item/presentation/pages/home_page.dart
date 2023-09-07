import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:sizer/sizer.dart';

import '../widgets/home/clickable_circular_button.dart';
import '../widgets/home/custom_expansion_tile.dart';
import '../widgets/home/found_items_container.dart';
import '../widgets/home/lost_items_container.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (ctx, state) {
        return BlocBuilder<BadgeBloc, BadgeState>(
          builder: (badgeCtx, badgeState) {
            if (state.hasLoadingError) {
              return ErrorPage(
                  onRetry: () => ctx
                      .read<HomeBloc>()
                      .add(const HomeEvent.homeRefreshed()));
            }

            return RefreshIndicator(
              onRefresh: () async {
                Future block = ctx.read<HomeBloc>().stream.first;
                ctx.read<HomeBloc>().add(const HomeEvent.homeRefreshed());
                await block;
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Home", style: TextStyle(fontSize: 30)),
                          Row(
                            children: [
                              badges.Badge(
                                badgeContent: Text("${badgeState.unreadNews}"),
                                showBadge: badgeState.unreadNews > 0,
                                position:
                                    badges.BadgePosition.topEnd(top: 6, end: 8),
                                child: ClickableCircularButton(
                                  icon: Icons.notifications,
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed('/notifications'),
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              badges.Badge(
                                badgeContent: Text(
                                    "${badgeState.unreadReceivedClaims + (badgeState.hasUnreadSentClaims ? 1 : 0)}"),
                                showBadge: badgeState.unreadReceivedClaims > 0,
                                position:
                                    badges.BadgePosition.topEnd(top: 6, end: 8),
                                child: ClickableCircularButton(
                                  icon: Icons.connect_without_contact,
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed('/claims'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CustomExpansionTile(
                        title: const Text(
                          "Do you have lost or found an item? What's now?",
                        ),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 95.w,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    width: 40.w,
                                    height: 40.w,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/images/question.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 40.w,
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Tutorial for ",
                                          style: TextStyle(
                                              color:
                                                  PersonalizedColor.mainColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        PersonalizedLargeGreenButton(
                                            onPressed: () {},
                                            text: const Text(
                                              "Lost item",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                        PersonalizedLargeGreenButton(
                                            onPressed: () {},
                                            text: const Text("Found item",
                                                style: TextStyle(
                                                    color: Colors.white))),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),

                    const LostItemsContainer(),
                    const FoundItemsContainer(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
