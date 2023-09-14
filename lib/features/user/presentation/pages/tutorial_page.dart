import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/user/presentation/widgets/tutorial/lost_item_tutorial.dart';


import '../../../../utils/colors/custom_color.dart';
import '../widgets/tutorial/found_item_tutorial.dart';

class TutorialScreen extends StatelessWidget {
  final int? tab;

  const TutorialScreen({super.key, this.tab});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: DefaultTabController(
        initialIndex: tab != null ? tab! : 0,
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.tutorial,
                style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
              iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      AppLocalizations.of(context)!.lostItems,
                      style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ),
                  Tab(
                    child: Text(
                      AppLocalizations.of(context)!.foundItems,
                      style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
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
