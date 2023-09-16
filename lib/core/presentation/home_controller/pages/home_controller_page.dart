import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/chat/presentation/pages/inbox_page.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

import '../../../../features/badges/presentation/bloc/badge_bloc.dart';
import '../../../../features/chat/presentation/bloc/inbox/inbox_bloc.dart';
import '../../../../features/item/presentation/pages/fake_insert_page_item.dart';
import '../../../../features/item/presentation/pages/home_page.dart';
import '../../../../features/item/presentation/pages/search_page.dart';
import '../../../../features/user/presentation/bloc/user/user_bloc.dart';
import '../../../../features/user/presentation/pages/user_page.dart';
import '../bloc/home_controller_bloc.dart';

class HomeControllerScreen extends StatelessWidget {
  final List<bool> hasPageBeenInitialized = [true, true, true, false, false];

  HomeControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const SearchScreen(),
      const FakeInsertPageItem(),
      const InboxScreen(),
      const UserScreen(),
    ];

    return BlocBuilder<BadgeBloc, BadgeState>(
      builder: (badgeCtx, badgeState) => BlocBuilder<HomeControllerBloc, HomeControllerState>(
        builder: (ctx, state) => BlocBuilder<SearchBloc, SearchState>(
          builder: (searchCtx, searchState) {
            return SafeArea(
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: AppBar(
                    backgroundColor: state.tabIndex == 4 ||
                            (state.tabIndex == 1 && searchState.pageState == SearchPageState.resultPage)
                        ? Theme.of(context).extension<CustomColors>()!.background2
                        : Theme.of(context).colorScheme.background,
                    elevation: 0,
                    surfaceTintColor: Theme.of(context).colorScheme.outline,
                    shadowColor: Theme.of(context).colorScheme.outline,
                    iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.background,
                body: pages[state.tabIndex],
                bottomNavigationBar: BottomNavigationBar(
                  showSelectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: true,
                  currentIndex: state.tabIndex,
                  onTap: (index) {
                    if (!hasPageBeenInitialized[index]) {
                      switch (index) {
                        case 3:
                          ctx.read<InboxBloc>().add(const InboxEvent.inboxContentCreated());
                        case 4:
                          ctx.read<UserBloc>().add(const UserEvent.contentCreated());
                      }

                      hasPageBeenInitialized[index] = true;
                    }

                    ctx.read<HomeControllerBloc>().add(HomeControllerEvent.tabChanged(index));
                  },
                  backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                  selectedItemColor: Theme.of(context).colorScheme.primary,
                  unselectedItemColor: Theme.of(context).colorScheme.outline,
                  items: [
                    BottomNavigationBarItem(
                        icon: badges.Badge(
                          position: badges.BadgePosition.topEnd(top: 0, end: -1),
                          showBadge: badgeState.unreadReceivedClaims > 0 || badgeState.unreadNews > 0,
                          child: const Icon(Icons.home),
                        ),
                        label: AppLocalizations.of(context)!.homeBottomBarTab),
                    BottomNavigationBarItem(
                        icon: const Icon(Icons.search), label: AppLocalizations.of(context)!.searchBottomBarTab),
                    BottomNavigationBarItem(
                        icon: const Icon(Icons.add_circle_outline_outlined),
                        label: AppLocalizations.of(context)!.insertBottomBarTab),
                    BottomNavigationBarItem(
                        icon: badges.Badge(
                          showBadge: badgeState.hasUnreadChats,
                          position: badges.BadgePosition.topEnd(top: 0, end: -1),
                          child: const Icon(Icons.mail),
                        ),
                        label: AppLocalizations.of(context)!.inboxBottomBarTab),
                    BottomNavigationBarItem(
                        icon: const Icon(Icons.person), label: AppLocalizations.of(context)!.profileBottomBarTab),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
