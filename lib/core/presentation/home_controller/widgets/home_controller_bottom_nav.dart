import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/fake_insert_page_item.dart';
import 'package:lost_and_found/features/item/presentation/pages/search_page.dart';
import 'package:lost_and_found/features/user/presentation/pages/user_page.dart';

import '../../../../features/item/presentation/pages/home_page.dart';
import '../../../../utils/colors.dart';
import '../bloc/home_controller_bloc.dart';

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

    return BlocBuilder<HomeControllerBloc, HomeControllerState>(builder: (ctx, state) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        body: pages[state.tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.tabIndex,
          onTap: (index) => ctx.read<HomeControllerBloc>().add(HomeControllerEvent.tabChanged(index)),
          selectedItemColor: PersonalizedColor.mainColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined), label: "Insert"),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ));
    });
  }
}
