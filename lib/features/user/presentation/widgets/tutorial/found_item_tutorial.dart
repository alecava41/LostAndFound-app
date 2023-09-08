import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _carouselSlider(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
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
          height: ScreenSize.isBigSmartphoneDevice(context)
              ? 80.h
              : ScreenSize.isMediumSmartphoneDevice(context)
                  ? 75.h
                  : 70.h,
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
                  'Report a Found Item',
                  'Input the item details such as title, position, category, safe question and create a new report.\nThis would notify all the users that have reported a lost item that could match the features of the one you have inserted.'),
              carouselDetailedTutorialItem(
                  'assets/images/manage-claim.png',
                  'Manage received Claims',
                  'Wait for users to open claims for your found item.\nManage all of them, by taking care about approving the most correct one.\nOnce you approve a claim for your found item, nobody will be able to see that item again and all the other claims will be automatically rejected.'),
              carouselDetailedTutorialItem('assets/images/chat.png', 'Chat to Arrange Item Return',
                  'Get in touch, through the chat, with the user who filled the claim you have approved, to arrange the item\'s return'),
              carouselDetailedTutorialItem(
                  'assets/images/solved.png',
                  'Mark Found Item as Solved',
                  'Everything went smooth, and the item came back to the legitimate owner!\nMark your found item as solved to remove it from the app.'),
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
