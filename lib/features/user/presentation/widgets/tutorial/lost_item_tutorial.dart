import 'package:flutter/material.dart';
import 'package:lost_and_found/features/user/presentation/widgets/tutorial/carousel_detailed_tutorial.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/screen_size.dart';

class LostItemTutorial extends StatefulWidget {
  const LostItemTutorial({super.key});

  @override
  State<LostItemTutorial> createState() => _LostItemTutorialState();
}

class _LostItemTutorialState extends State<LostItemTutorial> {
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
                  'Report a Lost Item',
                  'Input the item details such as title, position, category and create a new report.\nThis would notify all the users that have reported a found item that could match the features of the one you have inserted.'),
              carouselDetailedTutorialItem(
                  'assets/images/create-claim.png',
                  'Create a Claim',
                  'Browse found items of the other users or check if there are news for your lost item.\nOnce you find an item that could match your lost one, create a claim by answering to the safe question.\nWait for the other user to validate your claim.'),
              carouselDetailedTutorialItem('assets/images/chat.png', 'Chat to Arrange Item Return',
                  'If your claim has been approved, then get in touch with the other user, through the chat, to arrange the item\'s return'),
              carouselDetailedTutorialItem(
                  'assets/images/solved.png',
                  'Mark Lost Item as Solved',
                  'Everything went smooth, and the item came back to the legitimate owner!\nMark your lost item as solved to remove it from the app.'),
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
