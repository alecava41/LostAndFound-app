import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:sizer/sizer.dart';

import '../widgets/home/clickable_circular_button.dart';
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
            if (state.isLoading) {
              return const CustomCircularProgress(size: 100);
            }

            if (state.hasLoadingError) {
              return ErrorPage(onRetry: () => ctx.read<HomeBloc>().add(const HomeEvent.homeRefreshed()));
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
                    SizedBox(height: 3.h,),
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
                                position: badges.BadgePosition.topEnd(top: 6, end: 8),
                                child: ClickableCircularButton(
                                  icon: Icons.notifications,
                                  onPressed: () => Navigator.of(context).pushNamed('/notifications'),
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              badges.Badge(
                                badgeContent:
                                    Text("${badgeState.unreadReceivedClaims + (badgeState.hasUnreadSentClaims ? 1 : 0)}"),
                                showBadge: badgeState.unreadReceivedClaims > 0,
                                position: badges.BadgePosition.topEnd(top: 6, end: 8),
                                child: ClickableCircularButton(
                                  icon: Icons.connect_without_contact,
                                  onPressed: () => Navigator.of(context).pushNamed('/claims'),
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 4.h,),
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
