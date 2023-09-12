import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/utils/screen_size.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utils/colors.dart';
import 'carousel_detailed_tutorial.dart';

class FoundItemTutorial extends StatefulWidget {
  const FoundItemTutorial({super.key});

  @override
  State<FoundItemTutorial> createState() => _FoundItemTutorialState();
}

class _FoundItemTutorialState extends State<FoundItemTutorial> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _carouselSlider(),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? PersonalizedColor.mainColor : Colors.black,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  _carouselSlider() {
    return Column(
      children: [
        SizedBox(
          height: !ScreenSize.isSmallSmartphoneDevice(context) ? 70.h : 65.h,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              carouselDetailedTutorialItem(
                  'assets/images/create-report.png',
                  AppLocalizations.of(context)!.tutorialFoundItemTitle1,
                  AppLocalizations.of(context)!.tutorialFoundItemContent1),
              carouselDetailedTutorialItem(
                  'assets/images/manage-claim.png',
                  AppLocalizations.of(context)!.tutorialFoundItemTitle2,
                  AppLocalizations.of(context)!.tutorialFoundItemContent2),
              carouselDetailedTutorialItem(
                  'assets/images/chat.png',
                  AppLocalizations.of(context)!.tutorialFoundItemTitle3,
                  AppLocalizations.of(context)!.tutorialFoundItemContent3),
              carouselDetailedTutorialItem(
                  'assets/images/solved.png',
                  AppLocalizations.of(context)!.tutorialFoundItemTitle4,
                  AppLocalizations.of(context)!.tutorialFoundItemContent4),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
