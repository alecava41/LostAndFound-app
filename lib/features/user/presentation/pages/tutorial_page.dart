import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lost_and_found/features/user/presentation/widgets/tutorial/lost_item_tutorial.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../widgets/tutorial/found_item_tutorial.dart';

class TutorialScreen extends StatelessWidget {
  final int? tab;

  const TutorialScreen({super.key, this.tab});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: DefaultTabController(
        initialIndex: tab != null ? tab! : 0,
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: PersonalizedColor.backgroundColor,
            appBar: AppBar(
              title: const Text(
                "Tutorial",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Lost items",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Found items",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [LostItemTutorial(), FoundItemTutorial()],
            ),
          ),
        ),
      ),
    );
  }
}

class TutorialScreenArguments {
  final int? tab;

  const TutorialScreenArguments({this.tab});
}
