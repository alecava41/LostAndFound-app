import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/fake_insert_page_item.dart';
import 'package:lost_and_found/features/item/presentation/pages/search_page.dart';
import 'package:lost_and_found/features/user/presentation/pages/user_page.dart';

import '../../../../features/item/presentation/pages/home_page.dart';
import '../../../../utils/colors.dart';
import '../bloc/home_controller_bloc.dart';
import 'package:badges/badges.dart' as badges;

class HomeControllerBottomNav extends StatelessWidget {
  const HomeControllerBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const SearchScreen(),
      const FakeInsertPageItem(),
      const Center(
        child: Text("Contact"),
      ),
      const UserScreen(),
    ];

    return BlocBuilder<BadgeBloc, BadgeState>(
      builder: (badgeCtx, badgeState) => BlocBuilder<HomeControllerBloc, HomeControllerState>(
        builder: (ctx, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: PersonalizedColor.backGroundColor,
              body: pages[state.tabIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: state.tabIndex,
                onTap: (index) => ctx.read<HomeControllerBloc>().add(HomeControllerEvent.tabChanged(index)),
                selectedItemColor: PersonalizedColor.mainColor,
                unselectedItemColor: Colors.grey,
                items: [
                  BottomNavigationBarItem(
                      icon: badges.Badge(
                        position: badges.BadgePosition.topEnd(top: 0, end: -1),
                        showBadge: badgeState.unreadReceivedClaims > 0 || badgeState.unreadNews > 0,
                        child: const Icon(Icons.home),
                      ),
                      label: "Home"),
                  const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
                  const BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined), label: "Insert"),
                  BottomNavigationBarItem(
                      icon: badges.Badge(
                        position: badges.BadgePosition.topEnd(top: 0, end: -1),
                        child: const Icon(Icons.mail),
                      ),
                      label: "Inbox"),
                  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
